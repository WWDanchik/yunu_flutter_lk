import 'package:yunu_lk_flutter/core/paged/paged_data_loader.dart';

class PagedSelectionManager<T> {
  final PagedDataLoader<T> controller;
  final int Function(T item) getId;

  final Set<int> _selectedIds = <int>{};

  final void Function(Set<int> selectedIds)? onSelectionChanged;

  final SelectionMode mode;

  PagedSelectionManager({
    required this.controller,
    required this.getId,
    this.onSelectionChanged,
    this.mode = SelectionMode.multiple,
  });

  void selectItem(int id) {
    if (mode == SelectionMode.single) {
      _selectedIds.clear();
    }

    _selectedIds.add(id);
    _notifySelectionChanged();
  }

  void deselectItem(int id) {
    _selectedIds.remove(id);
    _notifySelectionChanged();
  }

  void toggleItem(int id) {
    if (_selectedIds.contains(id)) {
      deselectItem(id);
    } else {
      selectItem(id);
    }
  }

  void selectElement(T item) {
    selectItem(getId(item));
  }

  void deselectElement(T item) {
    deselectItem(getId(item));
  }

  void toggleElement(T item) {
    toggleItem(getId(item));
  }

  void selectAll() {
    if (mode == SelectionMode.single) return;

    final pages = controller.value.pages;
    if (pages == null) return;

    for (final page in pages) {
      for (final item in page) {
        _selectedIds.add(getId(item));
      }
    }
    _notifySelectionChanged();
  }

  void deselectAll() {
    _selectedIds.clear();
    _notifySelectionChanged();
  }

  void invertSelection() {
    if (mode == SelectionMode.single) {
      deselectAll();
      return;
    }

    final pages = controller.value.pages;
    if (pages == null) return;

    final allIds = <int>{};
    for (final page in pages) {
      for (final item in page) {
        allIds.add(getId(item));
      }
    }

    final newSelection = allIds.difference(_selectedIds);
    _selectedIds.clear();
    _selectedIds.addAll(newSelection);
    _notifySelectionChanged();
  }

  void selectWhere(bool Function(T item) condition) {
    if (mode == SelectionMode.single) return;

    final pages = controller.value.pages;
    if (pages == null) return;

    for (final page in pages) {
      for (final item in page) {
        if (condition(item)) {
          _selectedIds.add(getId(item));
        }
      }
    }
    _notifySelectionChanged();
  }

  void deselectWhere(bool Function(T item) condition) {
    final pages = controller.value.pages;
    if (pages == null) return;

    final idsToRemove = <int>{};
    for (final page in pages) {
      for (final item in page) {
        if (condition(item) && _selectedIds.contains(getId(item))) {
          idsToRemove.add(getId(item));
        }
      }
    }

    _selectedIds.removeAll(idsToRemove);
    _notifySelectionChanged();
  }

  void selectRange(int startId, int endId) {
    if (mode == SelectionMode.single) return;

    final pages = controller.value.pages;
    if (pages == null) return;

    bool selecting = false;
    final allItems = pages.expand((page) => page).toList();

    for (final item in allItems) {
      final itemId = getId(item);

      if (itemId == startId || itemId == endId) {
        selecting = !selecting;
        _selectedIds.add(itemId);
      } else if (selecting) {
        _selectedIds.add(itemId);
      }
    }
    _notifySelectionChanged();
  }

  bool isSelected(int id) => _selectedIds.contains(id);

  bool isElementSelected(T item) => isSelected(getId(item));

  bool get isAllSelected {
    final pages = controller.value.pages;
    if (pages == null || pages.isEmpty) return false;

    final allIds = <int>{};
    for (final page in pages) {
      for (final item in page) {
        allIds.add(getId(item));
      }
    }

    return allIds.isNotEmpty && allIds.every((id) => _selectedIds.contains(id));
  }

  bool get isPartiallySelected {
    final pages = controller.value.pages;
    if (pages == null || pages.isEmpty) return false;

    final allIds = <int>{};
    for (final page in pages) {
      for (final item in page) {
        allIds.add(getId(item));
      }
    }

    final selectedLoadedIds = _selectedIds.intersection(allIds);
    return selectedLoadedIds.isNotEmpty &&
        selectedLoadedIds.length < allIds.length;
  }

  bool get hasSelection => _selectedIds.isNotEmpty;

  bool get hasNoSelection => _selectedIds.isEmpty;

  Set<int> get selectedIds => Set<int>.from(_selectedIds);

  int get selectedCount => _selectedIds.length;

  List<T> get selectedItems {
    final pages = controller.value.pages;
    if (pages == null) return [];

    final selectedItems = <T>[];
    for (final page in pages) {
      for (final item in page) {
        if (_selectedIds.contains(getId(item))) {
          selectedItems.add(item);
        }
      }
    }
    return selectedItems;
  }

  T? get firstSelectedItem {
    final items = selectedItems;
    return items.isNotEmpty ? items.first : null;
  }

  T? get lastSelectedItem {
    final items = selectedItems;
    return items.isNotEmpty ? items.last : null;
  }

  void forEachSelected(void Function(T item) action) {
    for (final item in selectedItems) {
      action(item);
    }
  }

  List<R> mapSelected<R>(R Function(T item) mapper) {
    return selectedItems.map(mapper).toList();
  }

  List<T> filterSelected(bool Function(T item) predicate) {
    return selectedItems.where(predicate).toList();
  }

  void cleanupSelection() {
    final pages = controller.value.pages;
    if (pages == null || pages.isEmpty) {
      _selectedIds.clear();
      _notifySelectionChanged();
      return;
    }

    final existingIds = <int>{};
    for (final page in pages) {
      for (final item in page) {
        existingIds.add(getId(item));
      }
    }

    final idsToRemove = _selectedIds.difference(existingIds);
    if (idsToRemove.isNotEmpty) {
      _selectedIds.removeAll(idsToRemove);
      _notifySelectionChanged();
    }
  }

  void restoreSelection(Set<int> ids) {
    _selectedIds.clear();
    _selectedIds.addAll(ids);
    _notifySelectionChanged();
  }

  void _notifySelectionChanged() {
    onSelectionChanged?.call(selectedIds);
  }
}

enum SelectionMode { single, multiple }
