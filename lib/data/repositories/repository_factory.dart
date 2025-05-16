import 'package:yunu_lk_flutter/core/api/client/api_client.dart';
import 'package:yunu_lk_flutter/data/repositories/auth_repository.dart';
import 'package:yunu_lk_flutter/data/repositories/category_repository.dart';
import 'package:yunu_lk_flutter/data/repositories/marketplace_repository.dart';
import 'package:yunu_lk_flutter/data/repositories/product_repository.dart';
import 'package:yunu_lk_flutter/data/repositories/statistic_repository.dart';

class RepositoryFactory {
  final ApiClient apiClient;

  const RepositoryFactory({required this.apiClient});
  ProductRepository get productRepository =>
      ProductRepository(apiClient: apiClient);

  AuthRepository get authRepository => AuthRepository(apiClient: apiClient);

  CategoryRepository get categoryRepository =>
      CategoryRepository(apiClient: apiClient);

  MarketplaceRepository get marketplaceRepository =>
      MarketplaceRepository(apiClient: apiClient);
  StatisticRepository get statisticRepository =>
      StatisticRepository(apiClient: apiClient);
}
