import 'package:json_annotation/json_annotation.dart';

enum ApiErrorType {
  authenticationError,
  invalidRequestError,
  notFoundError,
  httpError,
  techError,
}

extension ApiErrorTypeExtension on ApiErrorType {
  String get code {
    switch (this) {
      case ApiErrorType.authenticationError:
        return 'AUTHENTICATION_ERROR';
      case ApiErrorType.invalidRequestError:
        return 'INVALID_REQUEST_ERROR';
      case ApiErrorType.notFoundError:
        return 'NOT_FOUND_ERROR';
      case ApiErrorType.httpError:
        return 'HTTP_ERROR';
      case ApiErrorType.techError:
        return 'TECH_ERROR';
    }
  }
}

class ApiErrorTypeConverter implements JsonConverter<ApiErrorType?, String?> {
  const ApiErrorTypeConverter();

  @override
  ApiErrorType? fromJson(String? json) {
    if (json == null) return null;
    switch (json) {
      case 'AUTHENTICATION_ERROR':
        return ApiErrorType.authenticationError;
      case 'INVALID_REQUEST_ERROR':
        return ApiErrorType.invalidRequestError;
      case 'NOT_FOUND_ERROR':
        return ApiErrorType.notFoundError;
      case 'HTTP_ERROR':
        return ApiErrorType.httpError;
      case 'TECH_ERROR':
        return ApiErrorType.techError;
      default:
        return null;
    }
  }

  @override
  String? toJson(ApiErrorType? object) => object?.code;
}
