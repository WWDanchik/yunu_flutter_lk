import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/providers/product_repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_filter.dart';
part 'product_paging_controller.g.dart';

@riverpod
PagingController<int, Product> productPagingController(Ref ref) {
  final repository = ref.watch(productRepositoryProvider);
  final filter = ref.watch(productFilterNotifierProvider);

  final controller = PagingController<int, Product>(
    getNextPageKey: (state) {
      if (state.keys == null || state.keys!.isEmpty) {
        return 0;
      }
      final lastPage = state.pages?.last;
      if (lastPage == null || lastPage.isEmpty) {
        return null;
      }

      return state.keys!.last + 1;
    },

    fetchPage: (pageKey) async {
      final response = await repository.list(pageKey, 20, filter: filter);
      return response.list;
    },
  );
  ref.listen(productFilterNotifierProvider, (prev, next) {
    if (prev != next) {
      controller.refresh();
    }
  });

  ref.listen(productFilterNotifierProvider, (prev, next) {
    if (prev != next) {
      if (next.isWithHidden == true) {
        final newPages =
            controller.value.pages?.map((page) {
              return page.where((product) => !product.isHidden).toList();
            }).toList();

        controller.value = controller.value.copyWith(pages: newPages);
      }
    }
  });
  return controller;
}
