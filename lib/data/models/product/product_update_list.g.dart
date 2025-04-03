// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_update_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductUpdateListImpl _$$ProductUpdateListImplFromJson(
  Map<String, dynamic> json,
) => _$ProductUpdateListImpl(
  products:
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ProductUpdateListImplToJson(
  _$ProductUpdateListImpl instance,
) => <String, dynamic>{'products': instance.products};
