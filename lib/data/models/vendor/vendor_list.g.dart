// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorListImpl _$$VendorListImplFromJson(Map<String, dynamic> json) =>
    _$VendorListImpl(
      list:
          (json['list'] as List<dynamic>)
              .map((e) => Vendor.fromJson(e as Map<String, dynamic>))
              .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$VendorListImplToJson(_$VendorListImpl instance) =>
    <String, dynamic>{'list': instance.list, 'total': instance.total};
