import 'package:freezed_annotation/freezed_annotation.dart';
import 'api_error_type.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    @ApiErrorTypeConverter() ApiErrorType? code,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
