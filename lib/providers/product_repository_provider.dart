import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/repositories/product_repository.dart';
import 'package:yunu_lk_flutter/providers/api_client_provider.dart';
part 'product_repository_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepository(apiClient: ref.watch(apiClientProvider));
}
