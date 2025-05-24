import 'package:dio/dio.dart';
import 'package:logger/web.dart';

class LoggingInterceptor extends Interceptor {
  final Logger logger;

  LoggingInterceptor({required this.logger});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i("REQUEST: ${options.method} ${options.uri}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d("RESPONSE: ${response.statusCode} ${response.data}");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
      "ERROR: ${err.message}",
      error: err.message,
      stackTrace: err.stackTrace,
    );
    handler.next(err);
  }
}
