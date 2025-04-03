import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

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

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    @ApiErrorTypeConverter() ApiErrorType? code,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

@Freezed(
  genericArgumentFactories: true,
  unionKey: "status",
  unionValueCase: FreezedUnionCase.none,
)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  @FreezedUnionValue('ERROR')
  const factory ApiResponse.error({
    @Default("ERROR") String status,
    required List<ApiError> errors,
  }) = ApiResponseError;

  @FreezedUnionValue('OK')
  const factory ApiResponse.ok({
    @Default("OK") String status,
    required T result,
  }) = ApiResponseOk<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
