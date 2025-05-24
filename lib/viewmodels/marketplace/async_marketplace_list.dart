import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/core/api/error/api_error.dart';
import 'package:yunu_lk_flutter/data/models/marketplace_list_result.dart';
import 'package:yunu_lk_flutter/providers/marketplace_repository_provider.dart';

import '../../data/models/api_response.dart';

part 'async_marketplace_list.g.dart';

@riverpod
class AsyncMarketplaceList extends _$AsyncMarketplaceList {
  @override
  FutureOr<ApiResponse<MarketplaceResult>> build() async {
    throw UnimplementedError();
  }

  Future<ApiResponse<MarketplaceResult>> _list() async {
    final authRepo = ref.read(marketplaceRepositoryProvider);

    return await authRepo.list();
  }

  Future<ApiResponse<MarketplaceResult>> list() async {
    state = const AsyncValue.loading();

    final asyncResponse =
        await AsyncValue.guard<ApiResponse<MarketplaceResult>>(() async {
          final marketplaceListResponse = await _list();

          return marketplaceListResponse;
        });

    state = asyncResponse;

    if (asyncResponse.hasError) {
      return ApiResponse.error(
        errors: [ApiError(message: asyncResponse.error.toString())],
      );
    }

    return asyncResponse.value!;
  }
}
