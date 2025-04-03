import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/repositories/marketplace_repository.dart';
import 'package:yunu_lk_flutter/providers/api_client_provider.dart';

part 'marketplace_repository_provider.g.dart';

@riverpod
MarketplaceRepository marketplaceRepository(Ref ref) {
  final client = ref.watch(apiClientProvider);
  return MarketplaceRepository(apiClient: client);
}
