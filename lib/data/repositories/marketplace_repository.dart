import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/marketplace_list_result.dart';

class MarketplaceRepository {
  final ApiClient _apiClient;

  const MarketplaceRepository({required ApiClient apiClient})
    : _apiClient = apiClient;

  Future<ApiResponse<MarketplaceResult>> list() async {
    final response = await _apiClient.post(
      "/marketplace/list",
      data: {"is_only_marketplaces": true},
    );

    final model = ApiResponse.fromJson(response, (json) {
      return MarketplaceResult.fromJson(json as Map<String, dynamic>);
    });

    return model;
  }
}
