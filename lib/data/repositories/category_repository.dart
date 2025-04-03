import 'package:yunu_lk_flutter/core/api/api_client.dart';
import 'package:yunu_lk_flutter/data/models/category/tree.dart';

class CategoryRepository {
  final ApiClient apiClient;

  CategoryRepository({required this.apiClient});

  Future<Tree> tree() async {
    final model = await apiClient.get("/category/tree");

    return Tree.fromJson(model);
  }
}
