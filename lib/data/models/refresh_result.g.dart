// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshResultImpl _$$RefreshResultImplFromJson(Map<String, dynamic> json) =>
    _$RefreshResultImpl(
      token: json['token'] as String,
      refresh_token: json['refresh_token'] as String,
      lifeTime: json['lifeTime'] as String,
    );

Map<String, dynamic> _$$RefreshResultImplToJson(_$RefreshResultImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refresh_token,
      'lifeTime': instance.lifeTime,
    };
