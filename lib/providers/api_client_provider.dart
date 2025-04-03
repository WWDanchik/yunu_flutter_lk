import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/core/api/api_client.dart';
import 'package:yunu_lk_flutter/core/api/api_config.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  final baseUrl = dotenv.get('BASE_URL');
  return ApiClient(config: ApiConfig(baseUrl: baseUrl));
}
