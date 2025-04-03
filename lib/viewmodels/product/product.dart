import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/product/marketplace_sku_relations_result.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/data/models/product/product_filter_params.dart';
import 'package:yunu_lk_flutter/data/models/product/product_list.dart';
import 'package:yunu_lk_flutter/data/models/product/product_stock_settings.dart';
import 'package:yunu_lk_flutter/providers/product_repository_provider.dart';
import 'package:yunu_lk_flutter/providers/repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_filter.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_paging_controller.dart';
part 'product.g.dart';

@riverpod
Future<ProductList> list(
  Ref ref,
  int page,
  int perPage,
  ProductFilterParams? filter,
) async {
  final productRepository = ref.watch(productRepositoryProvider);
  final response = await productRepository.list(page, perPage);
  return response;
}

@riverpod
Future<ApiResponse<ProductStockSettings>> viewUpdateStocksSettings(
  Ref ref,
  int productId,
) async {
  final productRepository = ref.watch(productRepositoryProvider);
  final response = await productRepository.viewUpdateStocksSettings({
    "product_id": productId,
  });
  return response;
}

@riverpod
Future<ProductDetail> detail(Ref ref, int productId) async {
  final repositories = ref.watch(repositoriesProvider);
  final productRepository = repositories.productRepository;

  final response = await productRepository.getProductById(productId);

  return response;
}

@riverpod
Future<ApiResponse<MarketplaceSkuRelationsResult>>
marketplaceSkuRelationsResult(Ref ref, int productId) async {
  final repositories = ref.watch(repositoriesProvider);
  final productRepository = repositories.productRepository;

  final response = await productRepository.marketplaceSkuRelations(productId);

  return response;
}

@riverpod
class ProductDetailController extends _$ProductDetailController {
  late final ProductDetail _originalDetail;
  @override
  Future<ProductDetailState> build(int productId) async {
    final repositories = ref.watch(repositoriesProvider);
    final productDetail = await repositories.productRepository.getProductById(
      productId,
    );
    _originalDetail = productDetail;
    return ProductDetailState(detail: productDetail, dataChanged: false);
  }

  Future<void> updateProductDetail() async {
    final repositories = ref.watch(repositoriesProvider);

    final currentState = state;

    if (currentState is! AsyncData) {
      return;
    }

    final currentDetail = currentState.value?.detail;
    if (currentDetail != null) {
      state = const AsyncValue.loading();

      try {
        final updatedDetail = await repositories.productRepository.update(
          currentDetail.id,
          FormData.fromMap(currentDetail.toJson()),
        );

        _originalDetail = updatedDetail;

        state = AsyncValue.data(
          ProductDetailState(detail: updatedDetail, dataChanged: false),
        );
      } catch (error, stackTrace) {
        state = AsyncValue.error(error, stackTrace);
      }
    }
  }

  void updateLocalDetail(ProductDetail productDetail) {
    state = state.whenData((oldState) {
      final hasChanged = productDetail != _originalDetail;
      return oldState.copyWith(detail: productDetail, dataChanged: hasChanged);
    });
  }

  void setDataChanged(bool value) {
    state = state.whenData((oldState) => oldState.copyWith(dataChanged: value));
  }

  void cancelLocalUpdate() {
    state = AsyncValue.data(
      ProductDetailState(detail: _originalDetail, dataChanged: false),
    );
  }
}

class ProductDetailState {
  final ProductDetail detail;
  final bool dataChanged;

  ProductDetailState({required this.detail, this.dataChanged = false});

  ProductDetailState copyWith({ProductDetail? detail, bool? dataChanged}) {
    return ProductDetailState(
      detail: detail ?? this.detail,
      dataChanged: dataChanged ?? this.dataChanged,
    );
  }
}
