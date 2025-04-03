import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/data/models/product/product_filter_params.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_filter.dart';
import 'package:yunu_lk_flutter/views/widgets/category/category_tree_radio_list_filter.dart';
import 'package:yunu_lk_flutter/views/widgets/marketplace/marketplace_checkbox_filter.dart';
import 'package:yunu_lk_flutter/views/widgets/marketplace/marketplace_radio_list_filter.dart';

class ProductFilterScreen extends ConsumerStatefulWidget {
  const ProductFilterScreen({super.key});

  @override
  ConsumerState<ProductFilterScreen> createState() =>
      _ProductFilterScreenState();
}

class _ProductFilterScreenState extends ConsumerState<ProductFilterScreen> {
  late ProductFilterParams tempFilter;

  @override
  void initState() {
    super.initState();

    tempFilter = ref.read(productFilterNotifierProvider);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        final notifier = ref.read(productFilterNotifierProvider.notifier);
        notifier.updateFilter(tempFilter);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Фильтры"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Отмена"),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Нет карточки",
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    MarketplaceRadioListFilter(
                      selectedNames: <String>{
                        if (tempFilter.lackLink != null) tempFilter.lackLink!,
                      },
                      onSelectionChanged: (selectedNames) {
                        setState(() {
                          final newValue =
                              selectedNames.isNotEmpty
                                  ? selectedNames.first
                                  : null;

                          if (tempFilter.lackLink == newValue) {
                            tempFilter = tempFilter.copyWith(lackLink: null);
                          } else {
                            tempFilter = tempFilter.copyWith(
                              lackLink: newValue,
                            );
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Категория",
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    CategoryTreeRadioListFilter(
                      selectedCategoryId: <int>{
                        if (tempFilter.category != null) tempFilter.category!,
                      },
                      onSelectionChanged: (selectedCategoryId) {
                        setState(() {
                          final newValue =
                              selectedCategoryId.isNotEmpty
                                  ? selectedCategoryId.first
                                  : null;

                          if (tempFilter.category == newValue) {
                            tempFilter = tempFilter.copyWith(category: null);
                          } else {
                            tempFilter = tempFilter.copyWith(
                              category: newValue,
                            );
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
