import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yunu_lk_flutter/data/models/category/category.dart';
part 'tree.g.dart';
part 'tree.freezed.dart';

@freezed
class Tree with _$Tree {
  const factory Tree({required List<Category> tree}) = _Tree;

  factory Tree.fromJson(Map<String, dynamic> json) => _$TreeFromJson(json);
}

class CategoryItem {
  final Category category;
  final int depth;

  CategoryItem(this.category, this.depth);
}

List<CategoryItem> flattenCategories(
  List<Category> categories, [
  int depth = 0,
]) {
  final items = <CategoryItem>[];
  for (final cat in categories) {
    items.add(CategoryItem(cat, depth));
    if (cat.child.isNotEmpty) {
      items.addAll(flattenCategories(cat.child, depth + 1));
    }
  }
  return items;
}
