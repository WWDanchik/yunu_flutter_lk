import 'dart:io';

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/providers/repository_provider.dart';
import 'package:yunu_lk_flutter/utils/image_utils.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product_controller.dart';
import 'package:yunu_lk_flutter/views/screens/product/image_viewer_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_disable_stock_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_information_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_media_screen.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_packaging_and_labeling_settings.dart';
import 'package:yunu_lk_flutter/views/widgets/product/marketplace_relations_view.dart';
import 'package:yunu_lk_flutter/views/widgets/product/product_detail_top_section.dart';
import 'package:yunu_lk_flutter/views/widgets/shared/section_header_with_actions.dart';

class ProductDetailScreen extends ConsumerWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productDetail = ref.watch(
      productDetailControllerProvider(product.id),
    );

    void showErrorToast(String text) {
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

    void showSuccessToast(String text) {
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

    return Scaffold(
      appBar: AppBar(
        title: Text(product.article),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                isDismissible: true,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  final bottomPadding = MediaQuery.of(context).padding.bottom;
                  return Container(
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: bottomPadding + 8,
                    ),

                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
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
                            title: const Text('Перенести в архив'),
                            leading: const Icon(Icons.archive),
                            onTap: () async {
                              Navigator.pop(context);

                              try {
                                final productRepository =
                                    ref
                                        .read(repositoriesProvider)
                                        .productRepository;
                                final response = await productRepository
                                    .setHidden(true, [product.id]);

                                response.when(
                                  error: (status, errors) {
                                    for (final error in errors) {
                                      showErrorToast(error.message);
                                    }
                                  },
                                  ok: (status, result) {
                                    ref
                                        .read(
                                          productControllerProvider.notifier,
                                        )
                                        .updateProductList(result.products);
                                    showSuccessToast("Товар архивирован");
                                  },
                                );
                              } catch (e) {}
                            },
                          ),

                          ListTile(
                            title: const Text(
                              'Настройки упаковки и маркировки',
                            ),
                            leading: const Icon(Icons.miscellaneous_services),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          ProductPackagingAndLabelingSettings(
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
                              );
                            },
                          ),

                          ListTile(
                            title: const Text("Отключение передачи остатков"),
                            leading: const Icon(Icons.power_settings_new),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => ProductDisableStockScreen(
                                        product: product,
                                      ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: productDetail.when(
        data: (data) {
          return SingleChildScrollView(
            restorationId: "product_detail_Scroll",

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailTopSection(productDetail: data.detail),
                SizedBox(height: 10),
                if (data.detail.childProducts != null)
                  SectionHeaderWithActions(
                    title: "Cостовляющие комплекта",
                    actions: [],
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('ID')),
                          DataColumn(label: Text('АРТИКУЛ')),
                          DataColumn(label: Text('НАЗВАНИЕ ТОВАРА')),
                          DataColumn(label: Text('КОЛ-ВО')),
                        ],
                        rows:
                            data.detail.childProducts!.map((child) {
                              return DataRow(
                                cells: [
                                  DataCell(Text(child.id.toString())),
                                  DataCell(Text(child.uid)),
                                  DataCell(Text(child.name)),
                                  DataCell(Text(child.count.toString())),
                                ],
                              );
                            }).toList(),
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                SectionHeaderWithActions(
                  title: "Идикация связи",
                  actions: [],
                  child: MarketplaceRelationsView(productDetail: data.detail),
                ),

                SizedBox(height: 10),
                SectionHeaderWithActions(
                  title: "Медиа",
                  actions: [
                    IconButton.filledTonal(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ProductMediaScreen(
                                  productDetail: data.detail,
                                ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                  child:
                      data.detail.photos.isNotEmpty
                          ? SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              spacing: 4,
                              children:
                                  data.detail.photos.asMap().entries.map((
                                    entry,
                                  ) {
                                    final index = entry.key;
                                    final photo = entry.value;
                                    if (photo.file.isNotEmpty) {
                                      return SizedBox(
                                        width: 150,
                                        height: 150,
                                        child: OpenContainer(
                                          transitionDuration: const Duration(
                                            milliseconds: 250,
                                          ),
                                          closedElevation: 0,
                                          openElevation: 0,
                                          closedShape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          closedColor: Colors.transparent,
                                          openColor: Colors.transparent,
                                          middleColor: Colors.transparent,
                                          tappable: true,

                                          closedBuilder: (context, action) {
                                            return Card.filled(
                                              margin: EdgeInsets.zero,

                                              child: Hero(
                                                tag: 'image_${photo.id}',
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  child: Material(
                                                    child: Ink.image(
                                                      fit: BoxFit.cover,
                                                      image:
                                                          isNetworkImage(
                                                                photo.file,
                                                              )
                                                              ? CachedNetworkImageProvider(
                                                                photo.file,
                                                              )
                                                              : FileImage(
                                                                    File(
                                                                      photo
                                                                          .file,
                                                                    ),
                                                                  )
                                                                  as ImageProvider,
                                                      child: InkWell(
                                                        onTap: () => action(),
                                                        child: const Align(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          openBuilder: (context, action) {
                                            return Hero(
                                              tag: 'image_${photo.id}',
                                              child: ImageViewerScreen(
                                                photos: data.detail.photos,
                                                initialPage: index,
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    return const Card();
                                  }).toList(),
                            ),
                          )
                          : Center(
                            child: Column(
                              children: [
                                Text(
                                  "У вас нет изображений",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Icon(Icons.hide_image),
                              ],
                            ),
                          ),
                ),

                SizedBox(height: 10),

                SectionHeaderWithActions(
                  title: "Информация о товаре",
                  actions: [
                    IconButton.filledTonal(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ProductInformationScreen(
                                  productDetail: data.detail,
                                ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                  child: Column(
                    children: [
                      _buildSectionHeader('Основные характеристики'),
                      _buildInfoTile(
                        context,
                        icon: Icons.title,
                        title: 'Название',
                        value: data.detail.name,
                      ),
                      _buildInfoTile(
                        context,
                        icon: Icons.description,
                        title: 'Описание',
                        value: data.detail.description ?? 'Нет описания',
                        maxLines: 3,
                      ),
                      _buildSectionHeader('Ценовая информация'),
                      _buildInfoTile(
                        context,
                        icon: Icons.attach_money,
                        title: 'Текущая цена',
                        value: '${data.detail.price} ₽',
                        valueStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildInfoTile(
                        context,
                        icon: Icons.history,
                        title: 'Старая цена',
                        value: '${data.detail.oldPrice} ₽',
                        valueStyle: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      _buildSectionHeader('Физические параметры'),
                      Wrap(
                        spacing: 16,
                        runSpacing: 12,
                        children: [
                          _buildMeasurementChip(
                            context,
                            icon: Icons.straighten,
                            label: 'Длина',
                            value: '${data.detail.length} см',
                          ),
                          _buildMeasurementChip(
                            context,
                            icon: Icons.width_normal,
                            label: 'Ширина',
                            value: '${data.detail.width} см',
                          ),
                          _buildMeasurementChip(
                            context,
                            icon: Icons.height,
                            label: 'Высота',
                            value: '${data.detail.height} см',
                          ),
                          _buildMeasurementChip(
                            context,
                            icon: Icons.scale,
                            label: 'Вес',
                            value: '${data.detail.weight} кг',
                          ),
                        ],
                      ),
                      _buildSectionHeader('Опции упаковки'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            _buildStaticCheckbox(
                              context,
                              title: 'Упаковка в пузырчатую пленку',
                              value: data.detail.isPackInBubbleWrap,
                            ),
                            _buildStaticCheckbox(
                              context,
                              title: 'Упаковка в картон',
                              value: data.detail.isPackInCardboard,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  // Вспомогательные методы
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildInfoTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    TextStyle? valueStyle,
    int? maxLines,
  }) {
    return ListTile(
      leading: Icon(icon, size: 28),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
      ),
      subtitle: Text(
        value,
        style:
            valueStyle ??
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface,
            ),
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }

  Widget _buildStaticCheckbox(
    BuildContext context, {
    required String title,
    required bool value,
  }) {
    return Container(
      decoration: BoxDecoration(
        color:
            value
                ? Colors.green.withValues(alpha: 0.1)
                : Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      child: CheckboxListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        value: value,
        onChanged: null,
        activeColor: Colors.green,
        checkColor: Colors.white,
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget _buildMeasurementChip(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Chip(
      avatar: Icon(icon, size: 20),
      label: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 12)),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.grey[300]!),
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}
