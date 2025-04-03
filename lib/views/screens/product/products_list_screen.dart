import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/providers/product_repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_controller.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_filter.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_paging_controller.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_disable_stock_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_filter_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_packaging_and_labeling_settings.dart';
import 'package:yunu_lk_flutter/views/widgets/product/product_card.dart';
import 'package:yunu_lk_flutter/views/widgets/product/prouct_no_more_items.dart';

class ProductsListScreen extends ConsumerStatefulWidget {
  const ProductsListScreen({super.key});

  @override
  ConsumerState<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends ConsumerState<ProductsListScreen> {
  final FocusNode _focusNode = FocusNode();
  late final TextEditingController _productSearchController;
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _productSearchController = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _productSearchController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      final currentFilter = ref.read(productFilterNotifierProvider);
      ref
          .read(productFilterNotifierProvider.notifier)
          .updateFilter(currentFilter.copyWith(name: value));
    });
  }

  void _showErrorToast(String text) {
    toastification.show(
      context: context,
      autoCloseDuration: Duration(seconds: 5),
      dragToClose: true,
      dismissDirection: DismissDirection.down,
      style: ToastificationStyle.fillColored,
      type: ToastificationType.error,
      title: RichText(text: TextSpan(text: text)),
    );
  }

  void _showSuccessToast(String text) {
    toastification.show(
      context: context,
      autoCloseDuration: Duration(seconds: 5),
      dragToClose: true,
      dismissDirection: DismissDirection.down,
      style: ToastificationStyle.fillColored,
      type: ToastificationType.success,
      title: RichText(text: TextSpan(text: text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final productFilter = ref.watch(productFilterNotifierProvider);
    final productPagingController = ref.watch(productPagingControllerProvider);
    final productController = ref.watch(productControllerProvider);
    final productRepository = ref.watch(productRepositoryProvider);

    return Scaffold(
      floatingActionButton:
          productController.selectMode
              ? null
              : FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    enableDrag: true,

                    isDismissible: true,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      final bottomPadding =
                          MediaQuery.of(context).padding.bottom;
                      return Container(
                        margin: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: bottomPadding + 8,
                        ),

                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Material(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(height: 8),
                              Container(
                                width: 40,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              const SizedBox(height: 8),
                              ListTile(
                                title: const Text('Добавить товар'),
                                leading: const Icon(Icons.add_shopping_cart),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: const Text('Добавить категорию'),
                                leading: const Icon(Icons.category),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: const Text("Добавить витр. комплект"),
                                leading: const Icon(Icons.storefront),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                label: const Text('Добавить'),
                icon: const Icon(Icons.add),
              ),

      persistentFooterButtons:
          productController.selectMode
              ? [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      Builder(
                        builder: (context) {
                          bool isLoading = false;
                          return StatefulBuilder(
                            builder: (
                              BuildContext context,
                              StateSetter setState,
                            ) {
                              return FilledButton.icon(
                                onPressed:
                                    productController
                                            .selectedProducts
                                            .isNotEmpty
                                        ? () async {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          try {
                                            final response =
                                                await productRepository
                                                    .setHidden(
                                                      true,
                                                      productController
                                                          .selectedProducts
                                                          .map((p) => p.id)
                                                          .toList(),
                                                    );

                                            response.when(
                                              error: (status, errors) {
                                                for (final error in errors) {
                                                  _showErrorToast(
                                                    error.message,
                                                  );
                                                }
                                              },
                                              ok: (status, result) {
                                                _showSuccessToast(
                                                  "Товары архивированы",
                                                );
                                                ref
                                                    .read(
                                                      productControllerProvider
                                                          .notifier,
                                                    )
                                                    .updateProductList(
                                                      result.products,
                                                    );

                                                ref
                                                    .read(
                                                      productControllerProvider
                                                          .notifier,
                                                    )
                                                    .deselectAll();
                                              },
                                            );
                                          } catch (e) {
                                            _showErrorToast(e.toString());
                                          } finally {
                                            setState(() {
                                              isLoading = false;
                                            });
                                          }
                                        }
                                        : null,
                                icon: Icon(Icons.archive),
                                label: AnimatedSize(
                                  duration: const Duration(milliseconds: 100),
                                  child:
                                      isLoading
                                          ? SizedBox(
                                            width: 16,
                                            height: 16,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2.0,
                                              color: Colors.white,
                                            ),
                                          )
                                          : Text("Архивировать"),
                                ),
                              );
                            },
                          );
                        },
                      ),

                      FilledButton.icon(
                        onPressed:
                            productController.selectedProducts.isNotEmpty
                                ? () {}
                                : null,
                        icon: const Icon(Icons.receipt_long),
                        label: const Text('Создать накладную'),
                      ),
                    ],
                  ),
                ),
              ]
              : null,

      appBar: AppBar(
        centerTitle: true,
        title: const Text("Товары"),
        actions: [
          IconButton(onPressed: () async {}, icon: const Icon(Icons.settings)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    controller: _productSearchController,
                    onChanged: _onSearchChanged,
                    cursorColor: Colors.blueAccent,
                    cursorWidth: 2.0,
                    cursorHeight: 24,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey[800],
                    ),
                    onTapOutside: (event) => _focusNode.unfocus(),
                    decoration: InputDecoration(
                      hintText: "Поиск товаров...",
                      hintStyle: TextStyle(
                        color: Colors.blueGrey.withValues(alpha: 0.6),
                        fontWeight: FontWeight.w400,
                      ),
                      filled: true,
                      fillColor: Colors.white.withValues(alpha: 0.9),

                      prefixIcon: Container(
                        padding: const EdgeInsets.only(left: 16, right: 8),
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.blueGrey[400],
                          size: 24,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.blueGrey.withValues(alpha: 0.1),
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 2,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hoverColor: Colors.blueAccent.withValues(alpha: 0.05),
                      isDense: true,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductFilterScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.tune),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceChip(
                    label: const Text("Архивированные"),
                    selected: productFilter.isWithHidden ?? false,
                    onSelected:
                        (value) => ref
                            .read(productFilterNotifierProvider.notifier)
                            .updateFilter(
                              productFilter.copyWith(isWithHidden: value),
                            ),
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text("Есть на складе"),
                    selected: productFilter.isNotEmptyStock ?? false,
                    onSelected:
                        (value) => ref
                            .read(productFilterNotifierProvider.notifier)
                            .updateFilter(
                              productFilter.copyWith(isNotEmptyStock: value),
                            ),
                  ),
                  const SizedBox(width: 8),
                  ChoiceChip(
                    label: const Text("ВГХ"),
                    selected: productFilter.isOnlyWithDiffDimensions ?? false,
                    onSelected:
                        (value) => ref
                            .read(productFilterNotifierProvider.notifier)
                            .updateFilter(
                              productFilter.copyWith(
                                isOnlyWithDiffDimensions: value,
                              ),
                            ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (productController.items.isNotEmpty)
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      ref
                          .read(productControllerProvider.notifier)
                          .toggleSelectMode();
                    },
                    child:
                        productController.selectMode
                            ? Text("Отменить")
                            : Text("Выбрать товары"),
                  ),

                if (productController.selectMode)
                  Row(
                    children: [
                      Text(
                        "${productController.selectedProducts.length} из ${productController.totalItems}",
                      ),
                      Checkbox(
                        shape: CircleBorder(),
                        value:
                            productController.totalItems ==
                            productController.selectedProducts.length,
                        onChanged: (value) {
                          if (value == true) {
                            ref
                                .read(productControllerProvider.notifier)
                                .selectAll();
                          } else {
                            ref
                                .read(productControllerProvider.notifier)
                                .deselectAll();
                          }
                        },
                      ),
                    ],
                  ),
              ],
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: PagingListener(
                  controller: productPagingController,
                  builder:
                      (context, state, fetchNextPage) => RefreshIndicator(
                        color: Theme.of(context).colorScheme.primary,

                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        displacement: 40.0,

                        strokeWidth: 3.0,
                        onRefresh: () async {
                          ref
                              .read(productControllerProvider.notifier)
                              .offSelectMode();

                          productPagingController.refresh();
                        },
                        child: PagedListView(
                          state: state,
                          fetchNextPage: fetchNextPage,
                          addAutomaticKeepAlives: true,

                          builderDelegate: PagedChildBuilderDelegate<Product>(
                            itemBuilder:
                                (context, product, index) => ProductCard(
                                  isSelectionMode: productController.selectMode,
                                  product: product,

                                  onSelect: (value, product) {
                                    ref
                                        .read(
                                          productControllerProvider.notifier,
                                        )
                                        .selectProduct(value, product);
                                  },
                                  isSelected: productController.selectedProducts
                                      .any((p) => p.id == product.id),
                                  onDisableStock:
                                      (product) => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  ProductDisableStockScreen(
                                                    product: product,
                                                  ),
                                        ),
                                      ),
                                  onPackagingSettings:
                                      (product) => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (
                                                context,
                                              ) => ProductPackagingAndLabelingSettings(
                                                updateProduct:
                                                    ref
                                                        .read(
                                                          productControllerProvider
                                                              .notifier,
                                                        )
                                                        .updateProduct,
                                                product: product,
                                              ),
                                        ),
                                      ),
                                  onArchive: (product) async {
                                    try {
                                      final response = await productRepository
                                          .setHidden(!product.isHidden, [
                                            product.id,
                                          ]);

                                      response.when(
                                        error: (status, errors) {
                                          for (final error in errors) {
                                            _showErrorToast(error.message);
                                          }
                                        },
                                        ok: (status, result) {
                                          ref
                                              .read(
                                                productControllerProvider
                                                    .notifier,
                                              )
                                              .updateProductList(
                                                result.products,
                                              );
                                          _showSuccessToast(
                                            !product.isHidden
                                                ? "Товар архивирован"
                                                : "Товар разархивирован",
                                          );
                                        },
                                      );
                                    } catch (e) {}
                                  },

                                  onEdit: (Product product) {},
                                  onEditMedia: (Product product) {},
                                  onEditPrice: (Product product) {},
                                ),
                            noMoreItemsIndicatorBuilder:
                                (_) => const ProductNoMoreItems(),
                            noItemsFoundIndicatorBuilder:
                                (_) => Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.search_off_rounded,
                                        size: 64,
                                        color: Theme.of(
                                          context,
                                        ).disabledColor.withValues(alpha: 0.3),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        'Ничего не найдено',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleMedium?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withValues(alpha: 0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          ),
                        ),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
