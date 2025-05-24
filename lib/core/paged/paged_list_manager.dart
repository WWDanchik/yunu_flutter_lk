import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yunu_lk_flutter/core/paged/paged_data_loader.dart';
import 'package:yunu_lk_flutter/core/paged/paged_list_modifier.dart';
import 'package:yunu_lk_flutter/core/paged/paged_selection_manager.dart';

class PagedListManager<T> {
  final PagedDataLoader<T> _dataLoader;
  late final PagedListModifier<T> _listModifier;
  late final PagedSelectionManager<T>? _selectionManager;

  PagedListManager({
    required Future<List<T>> Function(int pageKey, int pageSize) fetchItems,
    required int Function(T item) getId,
    int pageSize = 20,
    bool enableSelection = false,
    SelectionMode selectionMode = SelectionMode.multiple,
    void Function(Set<int> selectedIds)? onSelectionChanged,
  }) : _dataLoader = PagedDataLoader(
         fetchItems: fetchItems,
         pageSize: pageSize,
       ) {
    _listModifier = PagedListModifier(controller: _dataLoader, getId: getId);
    _selectionManager =
        enableSelection
            ? PagedSelectionManager(
              controller: _dataLoader,
              getId: getId,
              mode: selectionMode,
              onSelectionChanged: onSelectionChanged,
            )
            : null;
  }
  PagedListModifier<T> get listModifier => _listModifier;
  PagingController<int, T> get controller => _dataLoader.controller;

  PagedSelectionManager<T>? get selectionManager => _selectionManager;

  PagingState<int, T> get value => _dataLoader.value;

  set value(PagingState<int, T> newValue) => _dataLoader.value = newValue;

  void refresh() => _dataLoader.refresh();

  int get itemsCount => _dataLoader.itemsCount;

  List<T> get items => _dataLoader.items;

  bool get hasItems => itemsCount > 0;

  bool get hasError => controller.value.error != null;

  dynamic get error => controller.value.error;

  void updateItem(T updatedItem) => _listModifier.updateItem(updatedItem);

  void addItemToStart(T newItem) => _listModifier.addItemToStart(newItem);

  void addItemToEnd(T newItem) => _listModifier.addItemToEnd(newItem);

  T? removeItemById(int id) => _listModifier.removeItemById(id);

  int removeItemsByIds(List<int> ids) => _listModifier.removeItemsByIds(ids);

  int updateWhere(bool Function(T item) condition, T Function(T item) update) =>
      _listModifier.updateWhere(condition, update);

  int removeWhere(bool Function(T item) condition) =>
      _listModifier.removeWhere(condition);

  void replaceAllItems(List<T> newItems) =>
      _listModifier.replaceAllItems(newItems);

  void clearAllItems() => _listModifier.clearAllItems();

  T? getItemById(int id) => _listModifier.getItemById(id);

  bool hasItemWithId(int id) => _listModifier.hasItemWithId(id);

  bool get isEmpty => _listModifier.isEmpty;

  bool get isNotEmpty => _listModifier.isNotEmpty;

  int get itemCount => _listModifier.itemCount;

  List<T> get allItems => _listModifier.allItems;

  void selectItem(int id) => _selectionManager?.selectItem(id);

  void deselectItem(int id) => _selectionManager?.deselectItem(id);

  void toggleItem(int id) => _selectionManager?.toggleItem(id);

  void selectElement(T item) => _selectionManager?.selectElement(item);

  void deselectElement(T item) => _selectionManager?.deselectElement(item);

  void toggleElement(T item) => _selectionManager?.toggleElement(item);

  void selectAll() => _selectionManager?.selectAll();

  void deselectAll() => _selectionManager?.deselectAll();

  void invertSelection() => _selectionManager?.invertSelection();

  void selectWhere(bool Function(T item) condition) =>
      _selectionManager?.selectWhere(condition);

  void deselectWhere(bool Function(T item) condition) =>
      _selectionManager?.deselectWhere(condition);

  void selectRange(int startId, int endId) =>
      _selectionManager?.selectRange(startId, endId);

  bool isSelected(int id) => _selectionManager?.isSelected(id) ?? false;

  bool isElementSelected(T item) =>
      _selectionManager?.isElementSelected(item) ?? false;

  bool get isAllSelected => _selectionManager?.isAllSelected ?? false;

  bool get isPartiallySelected =>
      _selectionManager?.isPartiallySelected ?? false;

  bool get hasSelection => _selectionManager?.hasSelection ?? false;

  bool get hasNoSelection => _selectionManager?.hasNoSelection ?? true;

  Set<int> get selectedIds => _selectionManager?.selectedIds ?? <int>{};

  int get selectedCount => _selectionManager?.selectedCount ?? 0;

  List<T> get selectedItems => _selectionManager?.selectedItems ?? [];

  T? get firstSelectedItem => _selectionManager?.firstSelectedItem;

  T? get lastSelectedItem => _selectionManager?.lastSelectedItem;

  void forEachSelected(void Function(T item) action) =>
      _selectionManager?.forEachSelected(action);

  List<R> mapSelected<R>(R Function(T item) mapper) =>
      _selectionManager?.mapSelected(mapper) ?? [];

  List<T> filterSelected(bool Function(T item) predicate) =>
      _selectionManager?.filterSelected(predicate) ?? [];

  int removeSelectedItems() {
    if (_selectionManager == null) return 0;

    final selectedIds = _selectionManager!.selectedIds;
    final removedCount = _listModifier.removeItemsByIds(selectedIds.toList());
    _selectionManager!.deselectAll();

    return removedCount;
  }

  void updateSelectedItems(T Function(T item) update) {
    if (_selectionManager == null) return;

    final selectedIds = _selectionManager!.selectedIds;
    _listModifier.updateWhere(
      (item) => selectedIds.contains(_listModifier.getId(item)),
      update,
    );
  }

  void cleanupSelection() => _selectionManager?.cleanupSelection();

  void restoreSelection(Set<int> ids) =>
      _selectionManager?.restoreSelection(ids);

  void reset() {
    clearAllItems();
    deselectAll();
    refresh();
  }

  void dispose() {
    _dataLoader.dispose();
  }

  void debugPrint() {
    print('PagedListManager Debug Info:');
    print('  Items count: $itemCount');

    print('  Has error: $hasError');

    print('  Selection enabled: ${_selectionManager != null}');
    if (_selectionManager != null) {
      print('  Selected count: $selectedCount');
      print('  Has selection: $hasSelection');
    }
  }
}
