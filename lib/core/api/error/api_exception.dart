import 'api_error.dart';
import 'api_error_type.dart';

class ApiException implements Exception {
  final List<ApiError> errors;

  ApiException(this.errors);

  String get message =>
      errors.isNotEmpty ? errors.first.message : 'Неизвестная ошибка API';

  bool get isAuthError =>
      errors.any((error) => error.code == ApiErrorType.authenticationError);

  bool get isValidationError =>
      errors.any((error) => error.code == ApiErrorType.invalidRequestError);

  bool get isNotFoundError =>
      errors.any((error) => error.code == ApiErrorType.notFoundError);

  bool get isHttpError =>
      errors.any((error) => error.code == ApiErrorType.httpError);

  bool get isTechnicalError =>
      errors.any((error) => error.code == ApiErrorType.techError);

  factory ApiException.authError(String message) => ApiException([
    ApiError(message: message, code: ApiErrorType.authenticationError),
  ]);

  factory ApiException.validationError(
    String message, [
    List<String>? details,
  ]) {
    final errors = <ApiError>[
      ApiError(message: message, code: ApiErrorType.invalidRequestError),
    ];

    if (details != null) {
      errors.addAll(
        details.map(
          (detail) =>
              ApiError(message: detail, code: ApiErrorType.invalidRequestError),
        ),
      );
    }

    return ApiException(errors);
  }

  factory ApiException.notFoundError(String message) => ApiException([
    ApiError(message: message, code: ApiErrorType.notFoundError),
  ]);

  factory ApiException.httpError(String message) =>
      ApiException([ApiError(message: message, code: ApiErrorType.httpError)]);

  factory ApiException.technicalError(String message) =>
      ApiException([ApiError(message: message, code: ApiErrorType.techError)]);

  @override
  String toString() => 'ApiException: $message';
}
