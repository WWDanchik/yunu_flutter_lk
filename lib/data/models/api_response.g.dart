// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseErrorImpl<T> _$$ApiResponseErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$ApiResponseErrorImpl<T>(
  status: json['status'] as String? ?? "ERROR",
  errors:
      (json['errors'] as List<dynamic>)
          .map((e) => ApiError.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ApiResponseErrorImplToJson<T>(
  _$ApiResponseErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'status': instance.status, 'errors': instance.errors};

_$ApiResponseOkImpl<T> _$$ApiResponseOkImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$ApiResponseOkImpl<T>(
  status: json['status'] as String? ?? "OK",
  result: fromJsonT(json['result']),
);

Map<String, dynamic> _$$ApiResponseOkImplToJson<T>(
  _$ApiResponseOkImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'status': instance.status,
  'result': toJsonT(instance.result),
};
