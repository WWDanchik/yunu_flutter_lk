// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_stock_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CabinetImpl _$$CabinetImplFromJson(Map<String, dynamic> json) =>
    _$CabinetImpl(
      cabinetId: (json['cabinet_id'] as num).toInt(),
      cabinetName: json['cabinet_name'] as String,
      isDisabled: json['is_disabled'] as bool,
    );

Map<String, dynamic> _$$CabinetImplToJson(_$CabinetImpl instance) =>
    <String, dynamic>{
      'cabinet_id': instance.cabinetId,
      'cabinet_name': instance.cabinetName,
      'is_disabled': instance.isDisabled,
    };

_$ProductStockSettingsImpl _$$ProductStockSettingsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductStockSettingsImpl(
  productId: (json['product_id'] as num).toInt(),
  cabinets: (json['update_stock_settings'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Cabinet.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$$ProductStockSettingsImplToJson(
  _$ProductStockSettingsImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'update_stock_settings': instance.cabinets,
};
