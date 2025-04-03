import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_stock_settings.freezed.dart';
part 'product_stock_settings.g.dart';

@freezed
class Cabinet with _$Cabinet {
  const factory Cabinet({
    @JsonKey(name: 'cabinet_id') required int cabinetId,
    @JsonKey(name: 'cabinet_name') required String cabinetName,
    @JsonKey(name: 'is_disabled') required bool isDisabled,
  }) = _Cabinet;

  factory Cabinet.fromJson(Map<String, dynamic> json) =>
      _$CabinetFromJson(json);
}

@freezed
class ProductStockSettings with _$ProductStockSettings {
  const factory ProductStockSettings({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'update_stock_settings')
    required Map<String, Cabinet> cabinets,
  }) = _ProductStockSettings;

  factory ProductStockSettings.fromJson(Map<String, dynamic> json) =>
      _$ProductStockSettingsFromJson(json);
}
