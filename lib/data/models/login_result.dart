import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/mp_auth_scope.dart';
import 'package:yunu_lk_flutter/data/models/warehouse.dart';

part 'login_result.freezed.dart';
part 'login_result.g.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required String token,
    required String lifeTime,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'mp_auth_scopes') required List<MpAuthScope> mpAuthScopes,
    @JsonKey(name: 'active_warehouses')
    required List<Warehouse> activeWarehouses,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}
