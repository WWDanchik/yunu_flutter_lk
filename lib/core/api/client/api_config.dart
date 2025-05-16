import 'package:dio/dio.dart';

class ApiConfig {
  final String baseUrl;
  final void Function(
      RequestOptions options, RequestInterceptorHandler handler)? onRequest;
  final void Function(Response response, ResponseInterceptorHandler handler)?
      onResponse;
  final void Function(DioException error, ErrorInterceptorHandler handler)?
      onError;

  final void Function()? onAuthError;
  ApiConfig(
      {required this.baseUrl,
      this.onError,
      this.onRequest,
      this.onResponse,
      this.onAuthError});
}
