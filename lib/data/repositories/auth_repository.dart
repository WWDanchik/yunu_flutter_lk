import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/login_result.dart';

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<ApiResponse<LoginResult>> login(String login, String password) async {
    final response = await _apiClient.post(
      '/login',
      data: {'login': login, 'password': password},
    );

    return ApiResponse.fromJson(
      response,
      (obj) => LoginResult.fromJson(obj as Map<String, dynamic>),
    );
  }
}
