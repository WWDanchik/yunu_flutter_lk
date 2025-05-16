import 'package:dio/dio.dart';
import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/product/marketplace_sku_relations_result.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/data/models/product/product_filter_params.dart';
import 'package:yunu_lk_flutter/data/models/product/product_list.dart';
import 'package:yunu_lk_flutter/data/models/product/product_stock_settings.dart';
import 'package:yunu_lk_flutter/data/models/product/product_update.dart';
import 'package:yunu_lk_flutter/data/models/product/product_update_list.dart';
import 'package:yunu_lk_flutter/data/models/shared/message.dart';

class ProductRepository {
  final ApiClient _apiClient;

  const ProductRepository({required ApiClient apiClient})
    : _apiClient = apiClient;

  Future<ProductList> list(
    int page,
    int perPage, {
    ProductFilterParams? filter,
  }) async {
    final queryParameters = <String, dynamic>{
      'page': page.toString(),
      'perPage': perPage.toString(),
    };

    if (filter != null) {
      final filterParams = filter.toQueryParams();

      for (final entry in filterParams.entries) {
        if (entry.value != null) {
          queryParameters['filter[${entry.key}]'] = entry.value.toString();
        }
      }
    }

    final model = await _apiClient.get(
      "/product/list",
      queryParameters: queryParameters,
    );

    return ProductList.fromJson(model);
  }

  Future<ProductDetail> update(int productId, FormData productData) async {
    final model = await _apiClient.post(
      "/product/$productId",
      data: productData,
    );

    return ProductDetail.fromJson(model);
  }

  Future<ApiResponse<ProductStockSettings>> viewUpdateStocksSettings(
    Map<String, dynamic> payload,
  ) async {
    final model = await _apiClient.post(
      "/product/viewUpdateStocksSettings",
      data: payload,
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductStockSettings.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> setWithVideoRecord(
    bool value,
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/setWithVideoRecord",
      data: {"product_id": productId, "is_with_video_record": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> setFragile(
    bool value,
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/$productId/setFragile",
      data: {"is_fragile": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> saveIsPackInCardboard(
    bool value,
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/saveIsPackInCardboard",
      data: {"product_id": productId, "is_pack_in_cardboard": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> setRequiredCis(
    bool value,
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/$productId/setRequiredCis",
      data: {"is_required_cis": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> setFifo(bool value, int productId) async {
    final model = await _apiClient.post(
      "/product/setFifo",
      data: {"product_id": productId, "is_fifo": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<Message>> changeUpdateStocksSettings(
    int productId,
    List<Map<String, dynamic>> updateStockSettings,
  ) async {
    final model = await _apiClient.post(
      "/product/changeUpdateStocksSettings",
      data: {
        "product_id": productId,
        "update_stock_settings": updateStockSettings,
      },
    );

    return ApiResponse.fromJson(
      model,
      (json) => Message.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdate>> saveIsPackInBubbleWrap(
    bool value,
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/saveIsPackInBubbleWrap",
      data: {"product_id": productId, "is_pack_in_bubble_wrap": value},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdate.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<ProductUpdateList>> setHidden(
    bool isHidden,
    List<int> productIds,
  ) async {
    final model = await _apiClient.post(
      "/product/setHidden",
      data: {"is_hidden": isHidden, "product_ids": productIds},
    );

    return ApiResponse.fromJson(
      model,
      (json) => ProductUpdateList.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ProductDetail> getProductById(int productId) async {
    final model = await _apiClient.get("/product/$productId");

    return ProductDetail.fromJson(model);
  }

  Future<ApiResponse<MarketplaceSkuRelationsResult>> marketplaceSkuRelations(
    int productId,
  ) async {
    final model = await _apiClient.post(
      "/product/$productId/marketplaceSkuRelations",
    );

    return ApiResponse.fromJson(
      model,
      (json) =>
          MarketplaceSkuRelationsResult.fromJson(json as Map<String, dynamic>),
    );
  }
}
