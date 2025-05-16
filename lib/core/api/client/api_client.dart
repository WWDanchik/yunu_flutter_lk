import 'package:dio/dio.dart';
import 'package:logger/web.dart';
import 'package:yunu_lk_flutter/core/api/client/api_config.dart';
import 'package:yunu_lk_flutter/core/api/error/api_error.dart';
import 'package:yunu_lk_flutter/core/api/error/api_exception.dart';
import 'package:yunu_lk_flutter/core/api/interceptors/auth_interceptor.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/services/auth_service.dart';

class ApiClient {
  final Dio _dio;
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  final Logger _logger;
  final AuthService _authService;
  ApiClient({required ApiConfig config})
    : _dio = Dio(
        BaseOptions(
          baseUrl: config.baseUrl,
          headers: {'Content-Type': 'application/json'},
        ),
      ),
      _authService = AuthService(),
      _logger = Logger(printer: PrettyPrinter()) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          _logger.i("REQUEST: ${options.method} ${options.uri}");
          if (config.onRequest != null) {
            config.onRequest!(options, handler);
          }

          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          _logger.d("RESPONSE: ${response.statusCode} ${response.data}");
          if (config.onResponse != null) {
            config.onResponse!(response, handler);
          }

          handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          _logger.e(
            "ERROR: ${error.message}",
            error: error.message,
            stackTrace: error.stackTrace,
          );
          if (config.onError != null) {
            config.onError!(error, handler);
          }

          handler.next(error);
        },
      ),
    );
    _dio.interceptors.add(
      AuthInterceptor(
        authService: _authService,
        baseUrl: config.baseUrl,
        onAuthError: config.onAuthError,
      ),
    );
  }

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final response = await _dio.get(
      path,
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
    );
    return response.data;
  }

  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
    Options? options,
  }) async {
    final response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      onSendProgress: onSendProgress,
      options: options,
    );

    return response.data;
  }

  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  }) async {
    final response = await _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      onSendProgress: onSendProgress,
    );
    return response.data;
  }

  Future<T> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  }) async {
    final response = await _dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
      onSendProgress: onSendProgress,
    );
    return response.data;
  }

  Future<T> requestModel<T>(
    Future<dynamic> Function() requestFunc,
    T Function(dynamic) fromJson,
  ) async {
    try {
      final response = await requestFunc();
      if (response is Map<String, dynamic> &&
          response.containsKey("status") &&
          (response['status'] == "OK" || response['status'] == "ERROR")) {
        final apiResponse = ApiResponse.fromJson(response, fromJson);

        return apiResponse.when(
          error: (_, errors) {
            throw ApiException(errors);
          },
          ok: (_, result) {
            return fromJson(result);
          },
        );
      }

      return fromJson(response);
    } on ApiException {
      rethrow;
    } catch (e) {
      _logger.e('Error in requestModel: $e');
      rethrow;
    }
  }
}
