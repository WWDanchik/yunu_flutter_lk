import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/data/models/category/category.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/providers/repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product.dart';

import 'package:yunu_lk_flutter/views/widgets/shared/searchable_picker.dart';

class ProductInformationScreen extends ConsumerWidget {
  final ProductDetail productDetail;
  const ProductInformationScreen({super.key, required this.productDetail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(productDetailControllerProvider(productDetail.id));

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        ref
            .read(productDetailControllerProvider(productDetail.id).notifier)
            .cancelLocalUpdate();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Информация о товаре")),
        persistentFooterButtons: [
          Row(
            children: [
              Expanded(
                child: FilledButton.tonal(
                  onPressed:
                      (detail?.value?.dataChanged ?? false)
                          ? () {
                            ref
                                .read(
                                  productDetailControllerProvider(
                                    productDetail.id,
                                  ).notifier,
                                )
                                .updateProductDetail();
                          }
                          : null,
                  child: const Text("Сохранить"),
                ),
              ),
            ],
          ),
        ],
        body: detail.when(
          data: (data) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Название',
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста, введите название';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                ref
                                    .read(
                                      productDetailControllerProvider(
                                        productDetail.id,
                                      ).notifier,
                                    )
                                    .updateLocalDetail(
                                      data.detail.copyWith(name: value),
                                    );
                              },

                              initialValue: data.detail.name,
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Описание',
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 3,
                              onSaved: (value) {},
                              initialValue: data.detail.description,
                              onChanged: (value) {
                                ref
                                    .read(
                                      productDetailControllerProvider(
                                        productDetail.id,
                                      ).notifier,
                                    )
                                    .updateLocalDetail(
                                      data.detail.copyWith(description: value),
                                    );
                              },
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: null,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: SearchablePicker<Category, int>(
                              onSelected: (selected) {
                                if (selected.isNotEmpty) {
                                  ref
                                      .read(
                                        productDetailControllerProvider(
                                          productDetail.id,
                                        ).notifier,
                                      )
                                      .updateLocalDetail(
                                        data.detail.copyWith(
                                          categoryId: selected[0].id,
                                          categoryName: selected[0].name,
                                        ),
                                      );
                                } else {
                                  ref
                                      .read(
                                        productDetailControllerProvider(
                                          productDetail.id,
                                        ).notifier,
                                      )
                                      .updateLocalDetail(
                                        data.detail.copyWith(
                                          categoryId: null,
                                          categoryName: "",
                                        ),
                                      );
                                }
                              },
                              selectionMode: SelectionMode.single,
                              displayFn: (category) => category.name,
                              localItems: [],
                              title: "Выберите категорию",
                              filterMode: FilterMode.localOnly,

                              idFn: (item) => item.id,
                              fullScreen: true,
                              fetchApiInitialItems: () async {
                                final response =
                                    await ref
                                        .read(repositoriesProvider)
                                        .categoryRepository
                                        .tree();

                                return response.tree;
                              },
                              initialSelectedIds: [
                                if (data.detail.categoryId != null)
                                  data.detail.categoryId!,
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 16),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Цена',
                                      border: OutlineInputBorder(),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      if (value != null && value.isNotEmpty) {}
                                    },
                                    initialValue: data.detail.price.toString(),
                                    onChanged: (value) {
                                      final parsed = double.tryParse(value);
                                      if (parsed != null) {
                                        ref
                                            .read(
                                              productDetailControllerProvider(
                                                productDetail.id,
                                              ).notifier,
                                            )
                                            .updateLocalDetail(
                                              data.detail.copyWith(
                                                price: parsed,
                                              ),
                                            );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 16),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Старая цена',
                                      border: OutlineInputBorder(),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      if (value != null && value.isNotEmpty) {}
                                    },
                                    initialValue:
                                        data.detail.oldPrice.toString(),
                                    onChanged: (value) {
                                      final parsed = double.tryParse(value);
                                      if (parsed != null) {
                                        ref
                                            .read(
                                              productDetailControllerProvider(
                                                productDetail.id,
                                              ).notifier,
                                            )
                                            .updateLocalDetail(
                                              data.detail.copyWith(
                                                oldPrice: parsed,
                                              ),
                                            );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Длина (см)',
                                      border: OutlineInputBorder(),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      if (value != null && value.isNotEmpty) {}
                                    },

                                    initialValue:
                                        data.detail?.length != null
                                            ? data.detail?.length.toString()
                                            : "",
                                    onChanged: (value) {
                                      final parsed = double.tryParse(value);
                                      if (parsed != null) {
                                        ref
                                            .read(
                                              productDetailControllerProvider(
                                                productDetail.id,
                                              ).notifier,
                                            )
                                            .updateLocalDetail(
                                              data.detail.copyWith(
                                                length: parsed,
                                              ),
                                            );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Ширина (см)',
                                      border: OutlineInputBorder(),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) {
                                      if (value != null && value.isNotEmpty) {}
                                    },
                                    initialValue:
                                        data.detail?.width != null
                                            ? data.detail?.width.toString()
                                            : "",
                                    onChanged: (value) {
                                      final parsed = double.tryParse(value);
                                      if (parsed != null) {
                                        ref
                                            .read(
                                              productDetailControllerProvider(
                                                productDetail.id,
                                              ).notifier,
                                            )
                                            .updateLocalDetail(
                                              data.detail.copyWith(
                                                width: parsed,
                                              ),
                                            );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Высота',
                                    border: OutlineInputBorder(),
                                    suffixText: "см",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    if (value != null && value.isNotEmpty) {}
                                  },
                                  initialValue:
                                      data.detail?.height != null
                                          ? data.detail?.height.toString()
                                          : "",
                                  onChanged: (value) {
                                    final parsed = double.tryParse(value);
                                    if (parsed != null) {
                                      ref
                                          .read(
                                            productDetailControllerProvider(
                                              productDetail.id,
                                            ).notifier,
                                          )
                                          .updateLocalDetail(
                                            data.detail.copyWith(
                                              height: parsed,
                                            ),
                                          );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),

                          Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Вес',
                                border: OutlineInputBorder(),
                                suffix: Text("кг"),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                              keyboardType: TextInputType.number,
                              onSaved: (value) {
                                if (value != null && value.isNotEmpty) {}
                              },
                              initialValue:
                                  data.detail?.weight != null
                                      ? data.detail?.weight.toString()
                                      : "",
                              onChanged: (value) {
                                final parsed = double.tryParse(value);
                                if (parsed != null) {
                                  ref
                                      .read(
                                        productDetailControllerProvider(
                                          productDetail.id,
                                        ).notifier,
                                      )
                                      .updateLocalDetail(
                                        data.detail.copyWith(weight: parsed),
                                      );
                                }
                              },
                            ),
                          ),

                          CheckboxListTile(
                            title: const Text(
                              'Упаковка товара в воздушно-пупырчатую пленку',
                            ),
                            value: data.detail.isPackInBubbleWrap,
                            onChanged: (value) {
                              ref
                                  .read(
                                    productDetailControllerProvider(
                                      productDetail.id,
                                    ).notifier,
                                  )
                                  .updateLocalDetail(
                                    data.detail.copyWith(
                                      isPackInBubbleWrap:
                                          value ??
                                          data.detail.isPackInBubbleWrap,
                                    ),
                                  );
                            },
                          ),
                          CheckboxListTile(
                            title: const Text('Упаковка товара в картон'),
                            value: data.detail.isPackInCardboard,
                            onChanged: (value) {
                              ref
                                  .read(
                                    productDetailControllerProvider(
                                      productDetail.id,
                                    ).notifier,
                                  )
                                  .updateLocalDetail(
                                    data.detail.copyWith(
                                      isPackInCardboard:
                                          value ??
                                          data.detail.isPackInCardboard,
                                    ),
                                  );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
    );
  }
}
