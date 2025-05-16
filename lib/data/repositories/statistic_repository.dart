import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/received.dart';

import '../models/statistic.dart';

class StatisticRepository {
  final ApiClient _apiClient;

  const StatisticRepository({required ApiClient apiClient})
    : _apiClient = apiClient;

  Future<TodayResult> today([List<String>? marketplaces]) async {
    final response = await _apiClient.get(
      "/statistic/today",
      queryParameters: {"marketplaces": marketplaces},
    );

    final model = TodayResult.fromJson(response);

    return model;
  }

  Future<ApiResponse<ReceivedResult>> received([
    List<String>? marketplaces,
  ]) async {
    final response = await _apiClient.get(
      "/statistic/statusGroup/received/chartByAnyPeriod/revenue",
      queryParameters: {
        "marketplaces": marketplaces,
        "fromDate": "2023-07-02",
        "toDate": "2025-03-04",
      },
    );
    print(response);
    final model = ApiResponse.fromJson(response, (json) {
      return ReceivedResult.fromJson(json as Map<String, dynamic>);
    });

    return model;
  }
}
