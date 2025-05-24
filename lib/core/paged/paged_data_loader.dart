import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PagedDataLoader<T> {
  final PagingController<int, T> controller;
  final Future<List<T>> Function(int pageKey, int pageSize) _fetchItems;
  final int _pageSize;

  PagedDataLoader({
    required Future<List<T>> Function(int pageKey, int pageSize) fetchItems,
    required int pageSize,
  }) : _fetchItems = fetchItems,
       _pageSize = pageSize,
       controller = PagingController<int, T>(
         getNextPageKey: (state) {
           if (state.keys == null || state.keys!.isEmpty) {
             return 0;
           }
           final lastPage = state.pages?.last;
           if (lastPage == null || lastPage.isEmpty) {
             return null;
           }
           if (lastPage.length < pageSize) {
             return null;
           }

           return state.keys!.last + 1;
         },

         fetchPage: (pageKey) async {
           try {
             final items = fetchItems(pageKey, pageSize);
             return items;
           } catch (e) {
             rethrow;
           }
         },
       );

  void refresh() {
    controller.refresh();
  }

  int get itemsCount => controller.items?.length ?? 0;

  List<T> get items => controller.items ?? [];
  PagingState<int, T> get value => controller.value;

  set value(PagingState<int, T> newValue) {
    controller.value = newValue;
  }

  get pageSize => _pageSize;
  get fetchItems => _fetchItems;

  void dispose() {
    controller.dispose();
  }
}
