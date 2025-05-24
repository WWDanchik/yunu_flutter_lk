import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/models/vendor/vendor_list.dart';

class VendorRepository {
  final ApiClient _apiClient;

  VendorRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<VendorList> list({required int page, required int perPage}) {
    final queryParameters = <String, dynamic>{
      'page': page.toString(),
      'perPage': perPage.toString(),
    };

    try {
      return _apiClient.requestModel(
        () {
          return _apiClient.get(
            "/vendor/list",
            queryParameters: queryParameters,
          );
        },
        (json) {
          return VendorList.fromJson(json);
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
