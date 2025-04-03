// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultImpl _$$LoginResultImplFromJson(Map<String, dynamic> json) =>
    _$LoginResultImpl(
      token: json['token'] as String,
      lifeTime: json['lifeTime'] as String,
      refreshToken: json['refresh_token'] as String,
      mpAuthScopes:
          (json['mp_auth_scopes'] as List<dynamic>)
              .map((e) => MpAuthScope.fromJson(e as Map<String, dynamic>))
              .toList(),
      activeWarehouses:
          (json['active_warehouses'] as List<dynamic>)
              .map(
                (e) => Warehouse.fromJson(
                  (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  ),
                ),
              )
              .toList(),
    );

Map<String, dynamic> _$$LoginResultImplToJson(_$LoginResultImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lifeTime': instance.lifeTime,
      'refresh_token': instance.refreshToken,
      'mp_auth_scopes': instance.mpAuthScopes,
      'active_warehouses': instance.activeWarehouses,
    };
