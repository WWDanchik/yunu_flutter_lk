import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

@freezed
class ProductList with _$ProductList {
  const factory ProductList(
      {required String exportLink,
      required int total,
      required List<Product> list}) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}
