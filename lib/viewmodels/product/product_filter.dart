import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product_filter_params.dart';

part "product_filter.g.dart";

@riverpod
class ProductFilterNotifier extends _$ProductFilterNotifier {
  @override
  ProductFilterParams build() {
    return ProductFilterParams();
  }

  void updateFilter(ProductFilterParams newFilter) {
    state = newFilter;
  }

  void resetFilter() {
    state = ProductFilterParams();
  }
}
