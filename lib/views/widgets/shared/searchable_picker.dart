import 'dart:async';
import 'package:flutter/material.dart';

enum SelectionMode { single, multiple }

enum FilterMode { apiOnly, localOnly, combined }

class SearchablePicker<T, ID> extends StatefulWidget {
  final List<T> localItems;
  final ID Function(T) idFn;

  // Изначально выбранные идентификаторы (не сами объекты!)
  final List<ID> initialSelectedIds;

  // Когда пользователь подтвердил выбор, возвращаем список объектов T
  final ValueChanged<List<T>> onSelected;

  // --- Параметры для поиска/загрузки ---
  final Future<List<T>> Function(String query)? fetchApiItems;
  final Future<List<T>> Function()? fetchApiInitialItems;
  final FilterMode filterMode;

  // --- Внешний вид и поведение ---
  final String title;
  final String searchHint;
  final SelectionMode selectionMode;
  final Duration debounceDuration;
  final bool fullScreen;

  // --- Кастомизация отображения ---
  final String Function(T)? displayFn;
  final Widget Function(T, VoidCallback)? chipBuilder;
  final Widget Function(T, bool, ValueChanged<bool?>)? itemBuilder;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final Widget? apiResultsHeader;
  final Widget? localResultsHeader;
  final InputDecoration? decoration;

  const SearchablePicker({
    super.key,
    required this.localItems,
    required this.idFn,
    required this.initialSelectedIds,
    required this.onSelected,

    this.fetchApiItems,
    this.fetchApiInitialItems,
    this.filterMode = FilterMode.localOnly,

    this.title = 'Select items',
    this.searchHint = 'Search...',
    this.selectionMode = SelectionMode.multiple,
    this.debounceDuration = const Duration(milliseconds: 500),
    this.fullScreen = false,

    this.displayFn,
    this.chipBuilder,
    this.itemBuilder,
    this.loadingWidget,
    this.errorWidget,
    this.apiResultsHeader,
    this.localResultsHeader,
    this.decoration,
  }) : assert(
         fetchApiItems != null || filterMode != FilterMode.apiOnly,
         'API filter mode requires fetchApiItems',
       );

  @override
  State<SearchablePicker<T, ID>> createState() =>
      _SearchablePickerState<T, ID>();
}

class _SearchablePickerState<T, ID> extends State<SearchablePicker<T, ID>> {
  // --- 1) Храним выбранные ID как "источник правды" ---
  late Set<ID> _selectedIds;

  // --- 2) Кроме того, храним объекты, сопоставленные с _selectedIds
  late List<T> _selectedItems;

  // Результаты (локальные + загруженные), которые мы покажем
  late List<T> _localResults;
  late List<T> _originalLocalResults;
  List<T> _apiResults = [];

  bool _isLoading = false;
  String? _errorMessage;
  String _searchQuery = '';
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();

    // 1) Изначально выбранные идентификаторы
    _selectedIds = widget.initialSelectedIds.toSet();

    // 2) Изначально локальные данные
    _localResults = widget.localItems;

    // 3) Находим объекты, соответствующие _selectedIds
    _selectedItems = _mapIdsToItems(_selectedIds, _localResults);

    // Если single, обрежем до одного
    if (widget.selectionMode == SelectionMode.single &&
        _selectedItems.length > 1) {
      _selectedItems = _selectedItems.sublist(0, 1);
      // При желании можно тоже _selectedIds обрезать
      _selectedIds = _selectedItems.map(widget.idFn).toSet();
    }

    // Если нужно загрузить данные при открытии
    _initItemsIfNeeded();
  }

  /// Сопоставляем Set<ID> со списком T
  List<T> _mapIdsToItems(Set<ID> ids, List<T> allItems) {
    return allItems.where((element) {
      final elemId = widget.idFn(element);
      return ids.contains(elemId);
    }).toList();
  }

  Future<void> _initItemsIfNeeded() async {
    if (widget.fetchApiInitialItems != null) {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      try {
        final fetched = await widget.fetchApiInitialItems!();

        // Обновляем локальные данные (либо дополняем, по вашему сценарию)
        _localResults = fetched;
        _originalLocalResults = fetched;
        // ВАЖНО: теперь в _localResults могут быть те объекты,
        // id которых уже есть в _selectedIds — пересопоставим
        _selectedItems = _mapIdsToItems(_selectedIds, _localResults);
      } catch (e) {
        _errorMessage = e.toString();
      } finally {
        _isLoading = false;
        setState(() {});
      }
    }
  }

  void _onSearchChanged(String query) {
    _debounceTimer?.cancel();
    _searchQuery = query;
    _debounceTimer = Timer(widget.debounceDuration, () {
      _performSearch(query);
    });
  }

  Future<void> _performSearch(String query) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      if (widget.filterMode != FilterMode.apiOnly) {
        final lower = query.toLowerCase();

        _localResults =
            _originalLocalResults.where((item) {
              final text = widget.displayFn?.call(item) ?? item.toString();
              return text.toLowerCase().contains(lower);
            }).toList();
      }

      if (widget.filterMode != FilterMode.localOnly &&
          widget.fetchApiItems != null) {
        final fetched = await widget.fetchApiItems!(query);
        _apiResults = fetched;
      } else {
        _apiResults = [];
      }

      _selectedItems = _mapIdsToItems(_selectedIds, _localResults);
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      setState(() {});
    }
  }

  /// Скомбинированный список для отображения
  List<T> get _combinedResults {
    if (widget.filterMode == FilterMode.combined) {
      return [..._localResults, ..._apiResults];
    } else if (widget.filterMode == FilterMode.localOnly) {
      return _localResults;
    } else {
      return _apiResults; // apiOnly
    }
  }

  void _openPicker(BuildContext context) {
    final picker = _PickerContent<T>(
      title: widget.title,
      items: _combinedResults,
      selectedItems: _selectedItems,
      searchHint: widget.searchHint,
      selectionMode: widget.selectionMode,
      itemBuilder: widget.itemBuilder,
      displayFn: widget.displayFn,
      onSelected: _handleSelection,

      isLoading: _isLoading,
      errorMessage: _errorMessage,
      loadingWidget: widget.loadingWidget,
      errorWidget: widget.errorWidget,
    );

    if (widget.fullScreen) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => picker));
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        showDragHandle: true,
        builder: (_) => picker,
      );
    }
  }

  // Когда пользователь подтвердил выбор
  void _handleSelection(List<T> newSelection) {
    setState(() {
      // Обновляем _selectedItems
      _selectedItems = newSelection;

      // Пересоздаем _selectedIds (чтобы при последующих загрузках данных
      // мы могли их сопоставить)
      _selectedIds = _selectedItems.map(widget.idFn).toSet();
    });

    // Сообщаем наружу готовый список объектов
    widget.onSelected(_selectedItems);
  }

  // Когда пользователь удаляет элемент из выбранных (чип)
  void _removeItem(T item) {
    setState(() {
      _selectedItems.remove(item);
      final removedId = widget.idFn(item);
      _selectedIds.remove(removedId);
    });
    widget.onSelected(_selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openPicker(context),
      child: InputDecorator(
        decoration: (widget.decoration ?? const InputDecoration()).copyWith(
          border: const OutlineInputBorder(),
          contentPadding: EdgeInsets.only(top: 8, bottom: 0, left: 10),
          suffixIcon: Icon(Icons.chevron_right),
          label: Text(widget.title),
        ),
        child: _buildSelectionDisplay(),
      ),
    );
  }

  Widget _buildSelectionDisplay() {
    if (widget.selectionMode == SelectionMode.single) {
      return _buildSingle();
    } else {
      return _buildMultiple();
    }
  }

  Widget _buildSingle() {
    if (_selectedItems.isEmpty) {
      return Text(
        widget.searchHint,
        style: TextStyle(color: Theme.of(context).hintColor),
      );
    }
    final item = _selectedItems.first;
    return widget.chipBuilder?.call(item, () => _removeItem(item)) ??
        _defaultChipBuilder(item, () => _removeItem(item));
  }

  Widget _buildMultiple() {
    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: [
        for (var item in _selectedItems)
          widget.chipBuilder?.call(item, () => _removeItem(item)) ??
              _defaultChipBuilder(item, () => _removeItem(item)),

        // Плейсхолдер, по которому можно открыть пикер
        GestureDetector(
          onTap: () => _openPicker(context),
          child: Text(
            widget.searchHint,
            style: TextStyle(color: Theme.of(context).hintColor),
          ),
        ),
      ],
    );
  }

  Widget _defaultChipBuilder(T item, VoidCallback onDelete) {
    final txt = widget.displayFn?.call(item) ?? item.toString();
    return Row(
      children: [
        Chip(
          label: Text(txt),
          deleteIcon: const Icon(Icons.close),
          onDeleted: onDelete,
        ),
      ],
    );
  }
}

class _PickerContent<T> extends StatefulWidget {
  final String title;
  final List<T> items;
  final List<T> selectedItems;

  final String searchHint;
  final SelectionMode selectionMode;
  final ValueChanged<List<T>> onSelected;

  final Widget Function(T, bool, ValueChanged<bool?>)? itemBuilder;
  final String Function(T)? displayFn;

  // Состояния загрузки
  final bool isLoading;
  final String? errorMessage;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  const _PickerContent({
    required this.title,
    required this.items,
    required this.selectedItems,
    required this.searchHint,
    required this.selectionMode,
    required this.onSelected,
    this.itemBuilder,
    this.displayFn,
    required this.isLoading,
    this.errorMessage,
    this.loadingWidget,
    this.errorWidget,
    Key? key,
  }) : super(key: key);

  @override
  State<_PickerContent<T>> createState() => _PickerContentState<T>();
}

class _PickerContentState<T> extends State<_PickerContent<T>> {
  late List<T> _tempSelected;

  // Добавим: список для отображения, который мы будем фильтровать
  late List<T> _filteredItems;

  String _searchQuery = '';
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();

    // При входе копируем текущие выбранные
    _tempSelected = List.from(widget.selectedItems);

    // Изначально отображаем все переданные items
    _filteredItems = List.from(widget.items);
  }

  /// Метод, который вызывается при каждом вводе символа в TextField
  void _onSearchChanged(String query) {
    _debounceTimer?.cancel();
    _searchQuery = query;

    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      _performSearch(query);
    });
  }

  /// Собственно фильтрация: по _searchQuery
  void _performSearch(String query) {
    setState(() {
      final lower = query.toLowerCase();
      _filteredItems =
          widget.items.where((item) {
            final text = widget.displayFn?.call(item) ?? item.toString();
            return text.toLowerCase().contains(lower);
          }).toList();
    });
  }

  /// Вызывается при тапе по чекбоксу
  void _toggleSelection(T item, bool? checked) {
    setState(() {
      if (checked == true) {
        if (widget.selectionMode == SelectionMode.single) {
          _tempSelected = [item];
        } else {
          _tempSelected.add(item);
        }
      } else {
        _tempSelected.remove(item);
      }
    });

    // Если single — сразу завершаем
    if (widget.selectionMode == SelectionMode.single && checked == true) {
      widget.onSelected(_tempSelected);
      Navigator.pop(context);
    }
  }

  /// Кнопка Done (для multiple)
  void _applySelection() {
    widget.onSelected(_tempSelected);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final isMultiple = widget.selectionMode == SelectionMode.multiple;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          if (isMultiple)
            TextButton(onPressed: _applySelection, child: const Text('Done')),
        ],
      ),
      body: Column(
        children: [
          // Поле поиска
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: widget.searchHint,
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: _onSearchChanged,
            ),
          ),

          // Содержимое
          Expanded(child: _buildContent()),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (widget.isLoading) {
      return widget.loadingWidget ??
          const Center(child: CircularProgressIndicator());
    }
    if (widget.errorMessage != null) {
      return widget.errorWidget ??
          Center(child: Text('Error: ${widget.errorMessage}'));
    }

    // Рендерим _filteredItems, а не widget.items
    return ListView.builder(
      itemCount: _filteredItems.length,
      itemBuilder: (_, index) {
        final item = _filteredItems[index];
        final isSelected = _tempSelected.contains(item);

        if (widget.itemBuilder != null) {
          return widget.itemBuilder!(
            item,
            isSelected,
            (v) => _toggleSelection(item, v),
          );
        }

        // Дефолтный
        return CheckboxListTile(
          title: Text(widget.displayFn?.call(item) ?? item.toString()),
          value: isSelected,
          onChanged: (v) => _toggleSelection(item, v),
          controlAffinity: ListTileControlAffinity.leading,
        );
      },
    );
  }
}
