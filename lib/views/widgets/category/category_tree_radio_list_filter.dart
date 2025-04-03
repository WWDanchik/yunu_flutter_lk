import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/data/models/category/tree.dart';
import 'package:yunu_lk_flutter/viewmodels/category/category.dart';

class CategoryTreeRadioListFilter extends ConsumerWidget {
  final Set<int> selectedCategoryId;
  final void Function(Set<int>) onSelectionChanged;

  const CategoryTreeRadioListFilter({
    super.key,
    required this.selectedCategoryId,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryTree = ref.watch(treeProvider);
    return categoryTree.when(
      data: (data) {
        final flatCategories = flattenCategories(data.tree);
        return Column(
          children:
              flatCategories.map((item) {
                final category = item.category;
                final depth = item.depth;

                final leftPadding = depth * 16.0;
                final isSelected =
                    selectedCategoryId.isNotEmpty &&
                    selectedCategoryId.first == category.id;
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      if (isSelected) {
                        onSelectionChanged({});
                      } else {
                        onSelectionChanged({category.id});
                      }
                    },
                    child: IgnorePointer(
                      child: RadioListTile<int>(
                        value: category.id,
                        groupValue:
                            selectedCategoryId.isNotEmpty
                                ? selectedCategoryId.first
                                : null,
                        onChanged: (value) {},
                        contentPadding: EdgeInsets.only(left: leftPadding),
                        title: Text(category.name),
                      ),
                    ),
                  ),
                );
              }).toList(),
        );
      },
      error: (error, stackTrace) {
        return SizedBox.shrink();
      },
      loading: () {
        return Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
