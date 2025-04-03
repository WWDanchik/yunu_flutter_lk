import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

part 'product_update_list.freezed.dart';
part 'product_update_list.g.dart';

@freezed
class ProductUpdateList with _$ProductUpdateList {
  const factory ProductUpdateList({required List<Product> products}) =
      _ProductUpdateList;

  factory ProductUpdateList.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateListFromJson(json);
}
