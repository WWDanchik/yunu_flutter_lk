import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/received.dart';
import 'package:yunu_lk_flutter/data/models/statistic.dart';
import 'package:yunu_lk_flutter/providers/statistic_repository_provider.dart';

part "statistic.g.dart";

@riverpod
Future<TodayResult> today(Ref ref) async {
  final statisticRepository = ref.read(statisticRepositoryProvider);
  final response = await statisticRepository.today();

  return response;
}

@riverpod
Future<ApiResponse<ReceivedResult>> received(Ref ref) async {
  final statisticRepository = ref.read(statisticRepositoryProvider);
  final response = await statisticRepository.received();

  return response;
}
