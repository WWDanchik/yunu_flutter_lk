import 'package:yunu_lk_flutter/core/paged/paged_data_loader.dart';

class PagedListModifier<T> {
  final PagedDataLoader<T> controller;
  final int Function(T item) getId;

  PagedListModifier({required this.controller, required this.getId});

  void updateItem(T updatedItem) {
    final pages = controller.value.pages;
    if (pages == null) return;

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    bool itemFound = false;

    for (int pageIndex = 0; pageIndex < pagesCopy.length; pageIndex++) {
      final updatedId = getId(updatedItem);
      final index = pagesCopy[pageIndex].indexWhere(
        (item) => getId(item) == updatedId,
      );

      if (index != -1) {
        pagesCopy[pageIndex][index] = updatedItem;
        itemFound = true;
        break;
      }
    }

    if (itemFound) {
      controller.value = controller.value.copyWith(pages: pagesCopy);
    }
  }

  void addItemToStart(T newItem) {
    final pages = controller.value.pages;
    if (pages == null || pages.isEmpty) {
      controller.value = controller.value.copyWith(
        pages: [
          [newItem],
        ],
      );
      return;
    }

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    pagesCopy[0].insert(0, newItem);

    controller.value = controller.value.copyWith(pages: pagesCopy);
  }

  void insertItem(T newItem, int pageIndex, int index) {
    final pages = controller.value.pages;

    if (pages == null || pages.isEmpty) {
      controller.value = controller.value.copyWith(
        pages: [
          [newItem],
        ],
      );
      return;
    }
    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();

    pagesCopy[pageIndex].insert(index, newItem);

    controller.value = controller.value.copyWith(pages: pagesCopy);
  }

  void addItemToEnd(T newItem) {
    final pages = controller.value.pages;
    if (pages == null || pages.isEmpty) {
      controller.value = controller.value.copyWith(
        pages: [
          [newItem],
        ],
      );
      return;
    }

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    pagesCopy.last.add(newItem);

    controller.value = controller.value.copyWith(pages: pagesCopy);
  }

  T? removeItemById(int id) {
    final pages = controller.value.pages;
    if (pages == null) return null;

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    T? removedItem;

    for (int pageIndex = 0; pageIndex < pagesCopy.length; pageIndex++) {
      final index = pagesCopy[pageIndex].indexWhere(
        (item) => getId(item) == id,
      );

      if (index != -1) {
        removedItem = pagesCopy[pageIndex].removeAt(index);
        break;
      }
    }

    if (removedItem != null) {
      pagesCopy.removeWhere((page) => page.isEmpty);

      controller.value = controller.value.copyWith(pages: pagesCopy);
    }

    return removedItem;
  }

  int removeItemsByIds(List<int> ids) {
    final pages = controller.value.pages;
    if (pages == null) return 0;

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    int removedCount = 0;

    for (int pageIndex = 0; pageIndex < pagesCopy.length; pageIndex++) {
      final initialLength = pagesCopy[pageIndex].length;
      pagesCopy[pageIndex].removeWhere((item) => ids.contains(getId(item)));
      removedCount += initialLength - pagesCopy[pageIndex].length;
    }

    if (removedCount > 0) {
      pagesCopy.removeWhere((page) => page.isEmpty);

      controller.value = controller.value.copyWith(pages: pagesCopy);
    }

    return removedCount;
  }

  int updateWhere(bool Function(T item) condition, T Function(T item) update) {
    final pages = controller.value.pages;
    if (pages == null) return 0;

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    int updatedCount = 0;

    for (int pageIndex = 0; pageIndex < pagesCopy.length; pageIndex++) {
      for (
        int itemIndex = 0;
        itemIndex < pagesCopy[pageIndex].length;
        itemIndex++
      ) {
        final item = pagesCopy[pageIndex][itemIndex];
        if (condition(item)) {
          pagesCopy[pageIndex][itemIndex] = update(item);
          updatedCount++;
        }
      }
    }

    if (updatedCount > 0) {
      controller.value = controller.value.copyWith(pages: pagesCopy);
    }

    return updatedCount;
  }

  int removeWhere(bool Function(T item) condition) {
    final pages = controller.value.pages;
    if (pages == null) return 0;

    var pagesCopy = pages.map((page) => List<T>.of(page)).toList();
    int removedCount = 0;

    for (int pageIndex = 0; pageIndex < pagesCopy.length; pageIndex++) {
      final initialLength = pagesCopy[pageIndex].length;
      pagesCopy[pageIndex].removeWhere(condition);
      removedCount += initialLength - pagesCopy[pageIndex].length;
    }

    if (removedCount > 0) {
      pagesCopy.removeWhere((page) => page.isEmpty);

      controller.value = controller.value.copyWith(pages: pagesCopy);
    }

    return removedCount;
  }

  void replaceAllItems(List<T> newItems) {
    final pageSize = 20;
    final newPages = <List<T>>[];

    for (int i = 0; i < newItems.length; i += pageSize) {
      final end =
          (i + pageSize < newItems.length) ? i + pageSize : newItems.length;
      newPages.add(newItems.sublist(i, end));
    }

    controller.value = controller.value.copyWith(pages: newPages);
  }

  void clearAllItems() {
    controller.value = controller.value.copyWith(pages: []);
  }

  T? getItemById(int id) {
    final pages = controller.value.pages;
    if (pages == null) return null;

    for (final page in pages) {
      try {
        return page.firstWhere((item) => getId(item) == id);
      } catch (e) {
        continue;
      }
    }
    return null;
  }

  bool hasItemWithId(int id) {
    final pages = controller.value.pages;
    if (pages == null) return false;

    for (final page in pages) {
      if (page.any((item) => getId(item) == id)) {
        return true;
      }
    }
    return false;
  }

  int get itemCount {
    final pages = controller.value.pages;
    if (pages == null) return 0;

    return pages.fold(0, (sum, page) => sum + page.length);
  }

  bool get isEmpty => itemCount == 0;

  bool get isNotEmpty => itemCount > 0;

  List<T> get allItems {
    final pages = controller.value.pages;
    if (pages == null) return [];

    return pages.expand((page) => page).toList();
  }
}
