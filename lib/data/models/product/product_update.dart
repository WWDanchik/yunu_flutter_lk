import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

part 'product_update.freezed.dart';
part 'product_update.g.dart';

@freezed
class ProductUpdate with _$ProductUpdate {
  const factory ProductUpdate({required Product product}) = _ProductUpdate;

  factory ProductUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateFromJson(json);
}
