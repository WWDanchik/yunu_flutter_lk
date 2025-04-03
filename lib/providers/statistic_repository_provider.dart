import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/repositories/statistic_repository.dart';
import 'package:yunu_lk_flutter/providers/api_client_provider.dart';
part 'statistic_repository_provider.g.dart';

@riverpod
StatisticRepository statisticRepository(Ref ref) {
  return StatisticRepository(apiClient: ref.read(apiClientProvider));
}
