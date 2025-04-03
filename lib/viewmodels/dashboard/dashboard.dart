import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/received.dart';
import 'package:yunu_lk_flutter/data/models/statistic.dart';
import 'package:yunu_lk_flutter/providers/statistic_repository_provider.dart';

part 'dashboard.g.dart';

@riverpod
class DashboardMarketplaceFilterState
    extends _$DashboardMarketplaceFilterState {
  @override
  Set<String> build() => <String>{};

  void update(Iterable<String> ids) => state = ids.toSet();
}

@riverpod
Future<TodayResult> dashboardToday(Ref ref) async {
  final statisticRepository = ref.read(statisticRepositoryProvider);
  final dashboardMarketplaceFilter =
      ref.watch(dashboardMarketplaceFilterStateProvider);

  final today =
      await statisticRepository.today(dashboardMarketplaceFilter.toList());

  return today;
}

@riverpod
Future<ApiResponse<ReceivedResult>> dashboardReceived(Ref ref) async {
  final statisticRepository = ref.read(statisticRepositoryProvider);
  final dashboardMarketplaceFilter =
      ref.watch(dashboardMarketplaceFilterStateProvider);

  final received =
      await statisticRepository.received(dashboardMarketplaceFilter.toList());

  return received;
}
