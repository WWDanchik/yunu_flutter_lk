import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_filter.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_paging_controller.dart';

part 'product_controller.g.dart';

@riverpod
class ProductController extends _$ProductController {
  late PagingController<int, Product> _pagingController;

  @override
  ProductControllerState build() {
    _pagingController = ref.watch(productPagingControllerProvider);
    _pagingController.addListener(_handlePagingUpdate);

    return ProductControllerState(
      totalItems: _pagingController.items?.length ?? 0,
      selectedProducts: [],
      selectMode: false,
      items: [],
    );
  }

  void updateProduct(Product updatedProduct) async {
    _updateLocalProduct(updatedProduct);
  }

  void updateProductList(List<Product> updatedProductList) async {
    for (final product in updatedProductList) {
      _updateLocalProduct(product);
    }
  }

  void onSelectMode() {
    state = state.copyWith(selectMode: true);
  }

  void selectAll() {
    final all = state.items;
    state = state.copyWith(selectedProducts: all);
  }

  void deselectAll() {
    state = state.copyWith(selectedProducts: []);
  }

  void offSelectMode() {
    state = state.copyWith(selectMode: false, selectedProducts: []);
  }

  void toggleSelectMode() {
    if (state.selectMode) {
      offSelectMode();
    } else {
      onSelectMode();
    }
  }

  void selectProduct(bool value, Product product) async {
    _handleSelectProduct(value, product);
  }

  void _handlePagingUpdate() {
    state = state.copyWith(
      totalItems: _pagingController.items?.length ?? 0,
      items: _pagingController.items ?? [],
    );
  }

  void _handleSelectProduct(bool value, Product product) {
    final currentSelected = [...state.selectedProducts];
    if (value) {
      currentSelected.add(product);
    } else {
      final productIndex = currentSelected.indexWhere(
        (p) => p.id == product.id,
      );

      if (productIndex > -1) {
        currentSelected.removeAt(productIndex);
      }
    }

    state = state.copyWith(selectedProducts: currentSelected);
  }

  void _updateLocalProduct(Product product) {
    final productFilter = ref.read(productFilterNotifierProvider);
    final pages = _pagingController.value.pages;

    if (pages == null) return;

    var pagesCopy = pages.map((page) => List.of(page)).toList();
    bool updated = false;

    for (int pageKey = 0; pageKey < pagesCopy.length; pageKey++) {
      final productIndex = pagesCopy[pageKey].indexWhere(
        (pageProduct) => pageProduct.id == product.id,
      );
      if (productIndex != -1) {
        final currentProduct = pagesCopy[pageKey][productIndex];

        pagesCopy[pageKey][productIndex] = currentProduct.copyWith(
          isHidden: product.isHidden,
          name: product.name,
          article: product.article,
          categoryId: product.categoryId,
          type: product.type,
          price: product.price,
          quantity: product.quantity,
          oldPrice: product.oldPrice,
        );
        updated = true;
      }
    }

    if (productFilter.isWithHidden == true) {
      pagesCopy =
          pagesCopy.map((page) {
            return page.where((p) => p.isHidden).toList();
          }).toList();
    }

    if (updated) {
      _pagingController.value = _pagingController.value.copyWith(
        pages: pagesCopy,
      );
    }
  }
}

class ProductControllerState {
  final int totalItems;
  final List<Product> selectedProducts;
  final bool selectMode;
  final List<Product> items;

  const ProductControllerState({
    required this.totalItems,
    required this.selectedProducts,
    required this.selectMode,
    required this.items,
  });

  ProductControllerState copyWith({
    int? totalItems,
    List<Product>? selectedProducts,
    bool? selectMode,
    List<Product>? items,
  }) {
    return ProductControllerState(
      totalItems: totalItems ?? this.totalItems,
      selectedProducts: selectedProducts ?? this.selectedProducts,
      selectMode: selectMode ?? this.selectMode,
      items: items ?? this.items,
    );
  }
}
