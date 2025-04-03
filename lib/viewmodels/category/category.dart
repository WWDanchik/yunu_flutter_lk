import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/category/tree.dart';
import 'package:yunu_lk_flutter/providers/repository_provider.dart';

part 'category.g.dart';

@riverpod
Future<Tree> tree(Ref ref) async {
  final repositories = ref.watch(repositoriesProvider);
  final categoryRepository = repositories.categoryRepository;

  final response = await categoryRepository.tree();
  return response;
}
