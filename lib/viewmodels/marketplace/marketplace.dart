import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/marketplace_list_result.dart';
import 'package:yunu_lk_flutter/providers/marketplace_repository_provider.dart';
part "marketplace.g.dart";

@riverpod
Future<ApiResponse<MarketplaceResult>> marketplaceList(Ref ref) async {
  final marketplaceRepository = ref.read(marketplaceRepositoryProvider);
  final list = await marketplaceRepository.list();

  return list;
}
