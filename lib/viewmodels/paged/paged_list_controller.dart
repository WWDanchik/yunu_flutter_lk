import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yunu_lk_flutter/core/paged/paged_list_manager.dart';
import 'package:yunu_lk_flutter/core/paged/paged_list_modifier.dart';
import 'package:yunu_lk_flutter/core/paged/paged_selection_manager.dart';

class PagedListController<T> extends StateNotifier<PagedListManager<T>> {
  PagedListController({
    required Future<List<T>> Function(int pageKey, int pageSize) fetchItems,
    required int Function(T item) getId,
    int pageSize = 20,
    bool enableSelection = false,
    SelectionMode selectionMode = SelectionMode.multiple,
    void Function(Set<int> selectedIds)? onSelectionChanged,
  }) : super(
         PagedListManager<T>(
           fetchItems: fetchItems,
           getId: getId,
           pageSize: pageSize,
           enableSelection: enableSelection,
           selectionMode: selectionMode,
           onSelectionChanged: onSelectionChanged,
         ),
       );

  void refresh() => state.refresh();
  PagingController<int, T> get pagingController => state.controller;
  PagedListModifier<T> get listModifier => state.listModifier;
  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}
