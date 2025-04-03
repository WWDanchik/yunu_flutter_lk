import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_result.freezed.dart';
part 'refresh_result.g.dart';

@freezed
class RefreshResult with _$RefreshResult {
  const factory RefreshResult(
      {required String token,
      required String refresh_token,
      required String lifeTime}) = _RefreshResult;

  factory RefreshResult.fromJson(Map<String, dynamic> json) =>
      _$RefreshResultFromJson(json);
}
