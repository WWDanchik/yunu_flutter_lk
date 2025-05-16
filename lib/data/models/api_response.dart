import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/core/api/error/api_error.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

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
  ) => _$ApiResponseFromJson(json, fromJsonT);
}
