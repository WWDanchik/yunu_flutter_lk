import 'package:dio/dio.dart';
import 'package:yunu_lk_flutter/core/api/error/api_error_type.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/refresh_result.dart';
import 'package:yunu_lk_flutter/services/auth_service.dart';

class AuthInterceptor extends QueuedInterceptor {
  late AuthService _authService;
  late void Function()? _onAuthError;
  late Dio _retryClient;
  late Dio _refreshClient;
  late String _baseUrl;

  AuthInterceptor({
    required AuthService authService,
    void Function()? onAuthError,
    required String baseUrl,
  }) {
    _authService = authService;
    _onAuthError = onAuthError;
    _baseUrl = baseUrl;

    _refreshClient = Dio();
    _refreshClient.options = BaseOptions(baseUrl: _baseUrl);

    _retryClient = Dio();
    _retryClient.options = BaseOptions(baseUrl: _baseUrl);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenPair = await _authService.getTokenPair();

    if (tokenPair == null) {
      return handler.next(options);
    }

    final isAccessTokenValid = await _authService.isValidAccessToken;
    if (isAccessTokenValid) {
      options.headers.addAll(await _authService.buildHeaders());
      return handler.next(options);
    }

    final newTokenPair = await refreshToken();
    if (newTokenPair == null) {
      await _authService.clearTokenPair();
      _onAuthError?.call();
      return handler.next(options);
    }

    options.headers.addAll(await _authService.buildHeaders());
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      final data = ApiResponse.fromJson(response.data, (json) => json);

      await data.when(
        error: (status, errors) async {
          final hasAuthError = errors.any(
            (e) => e.code == ApiErrorType.authenticationError,
          );

          if (!hasAuthError) {
            return handler.next(response);
          }

          final tokenPair = await _authService.getTokenPair();
          if (tokenPair == null) {
            _onAuthError?.call();
            return handler.next(response);
          }

          final isAccessTokenValid = await _authService.isValidAccessToken;
          if (!isAccessTokenValid) {
            final newTokenPair = await refreshToken();
            if (newTokenPair == null) {
              await _authService.clearTokenPair();
              _onAuthError?.call();
              return handler.next(response);
            }

            final retryResponse = await _retry(response.requestOptions);

            handler.resolve(retryResponse);
            return;
          } else {
            final newTokenPair = await refreshToken();
            if (newTokenPair == null) {
              await _authService.clearTokenPair();
              _onAuthError?.call();
              return handler.next(response);
            }

            final retryResponse = await _retry(response.requestOptions);
            return handler.next(retryResponse);
          }
        },
        ok: (status, result) async {
          return handler.next(response);
        },
      );
    } catch (e) {
      return handler.next(response);
    }
  }

  Future<TokenPair?> refreshToken() async {
    final tokenPair = await _authService.getTokenPair();
    if (tokenPair == null) return null;

    try {
      final response = await _refreshClient.post(
        "/refresh_token",
        data: {"refresh_token": tokenPair.refreshToken},
      );

      final refreshResponse = ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (obj) => RefreshResult.fromJson(obj as Map<String, dynamic>),
      );

      return await refreshResponse.when(
        error: (status, errors) async {
          await _authService.clearTokenPair();
          return null;
        },
        ok: (status, result) async {
          final newTokenPair = (
            accessToken: result.token,
            refreshToken: result.refresh_token,
          );
          await _authService.saveTokenPair(newTokenPair);
          return newTokenPair;
        },
      );
    } catch (e) {
      await _authService.clearTokenPair();
      return null;
    }
  }

  Future<Response<R>> _retry<R>(RequestOptions requestOptions) async {
    final newHeaders = Map<String, dynamic>.of(requestOptions.headers);

    newHeaders.addAll(await _authService.buildHeaders());

    return _retryClient.request<R>(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data:
          requestOptions.data is FormData
              ? (requestOptions.data as FormData).clone()
              : requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        sendTimeout: requestOptions.sendTimeout,
        receiveTimeout: requestOptions.receiveTimeout,
        extra: requestOptions.extra,
        headers: newHeaders,
        responseType: requestOptions.responseType,
        contentType: requestOptions.contentType,
        validateStatus: requestOptions.validateStatus,
        receiveDataWhenStatusError: requestOptions.receiveDataWhenStatusError,
        followRedirects: requestOptions.followRedirects,
        maxRedirects: requestOptions.maxRedirects,
        requestEncoder: requestOptions.requestEncoder,
        responseDecoder: requestOptions.responseDecoder,
        listFormat: requestOptions.listFormat,
      ),
    );
  }
}
