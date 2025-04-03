import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/repositories/repository_factory.dart';
import 'package:yunu_lk_flutter/providers/api_client_provider.dart';

part 'repository_provider.g.dart';

@riverpod
RepositoryFactory repositories(Ref ref) {
  return RepositoryFactory(apiClient: ref.watch(apiClientProvider));
}
