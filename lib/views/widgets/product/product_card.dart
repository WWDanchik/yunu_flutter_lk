import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/views/screens/product/product_detail_screen.dart';
import 'package:yunu_lk_flutter/views/widgets/product/product_marketplace_indication.dart';

import 'product_action_button.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function(Product product) onArchive;
  final bool isSelectionMode;
  final bool isSelected;
  final Function(Product product)? onEdit;
  final Function(Product product)? onDisableStock;
  final Function(Product product)? onEditPrice;
  final Function(Product product)? onEditMedia;
  final Function(Product product)? onPackagingSettings;
  final Function(bool value, Product product)? onSelect;

  const ProductCard({
    super.key,
    required this.product,
    required this.onArchive,
    required this.onDisableStock,
    required this.onEdit,
    required this.onEditMedia,
    required this.onEditPrice,
    required this.onPackagingSettings,
    required this.isSelectionMode,
    required this.onSelect,
    required this.isSelected,
  });
  void _handleAction(Function(Product)? action) {
    if (action != null) {
      action(product);
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(
      locale: 'ru_RU',
      symbol: '₽',
      decimalDigits: 2,
    );

    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.5,
        children: [
          SlidableAction(
            onPressed: (BuildContext context) {
              onArchive(product);
            },
            backgroundColor: const Color(0xFF64B5F6),
            foregroundColor: Colors.white,
            icon: Icons.archive_rounded,
            label: 'Архивировать',
            spacing: 8,
            autoClose: true,
          ),
        ],
      ),
      closeOnScroll: true,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        elevation: 4,
        color: Colors.white,
        margin: EdgeInsets.zero,
        shadowColor: Colors.black.withValues(alpha: 0.1),
        child: InkWell(
          onLongPress: () {
            HapticFeedback.heavyImpact();
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
                          title:
                              product.isHidden
                                  ? Text('Разархивировать')
                                  : Text('Перенести в архив'),
                          leading: const Icon(Icons.archive),
                          onTap: () {
                            Navigator.pop(context);
                            onArchive(product);
                          },
                        ),

                        ListTile(
                          title: const Text('Настройки упаковки и маркировки'),
                          leading: const Icon(Icons.miscellaneous_services),
                          onTap: () {
                            Navigator.pop(context);
                            _handleAction(onPackagingSettings);
                          },
                        ),
                        ListTile(
                          title: const Text("Отключение передачи остатков"),
                          leading: const Icon(Icons.power_settings_new),
                          onTap: () {
                            Navigator.pop(context);
                            _handleAction(onDisableStock);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          onTap: () {
            if (isSelectionMode) {
              if (isSelected) {
                onSelect?.call(false, product);
              } else {
                onSelect?.call(true, product);
              }
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, bottom: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade100,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child:
                        product.photo.isNotEmpty
                            ? Image.network(
                              product.photo,
                              fit: BoxFit.cover,
                              errorBuilder:
                                  (_, __, ___) => const Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                  ),
                            )
                            : const Icon(Icons.image, color: Colors.grey),
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (product.marketplaces != null)
                        ProductMarketplaceIndication(
                          marketplaces: product.marketplaces!,
                        ),

                      const SizedBox(height: 16),

                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),

                      Text(
                        product.article,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Text(
                        formatCurrency.format(product.price),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Row(
                        spacing: 8,
                        children: [
                          if (product.wbFbo != null)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade50,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                'WB FBO ${product.wbFbo}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.purple.shade900,
                                ),
                              ),
                            ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.05),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Остаток ${product.quantity}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withValues(alpha: 0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                isSelectionMode
                    ? InkWell(
                      onTap: () {},
                      onLongPress: () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      customBorder: const CircleBorder(),
                      child: Checkbox(
                        value: isSelected,
                        onChanged: (value) {
                          if (value == true) {
                            onSelect?.call(true, product);
                          } else {
                            onSelect?.call(false, product);
                          }
                        },
                        shape: CircleBorder(),
                      ),
                    )
                    : ProductActionButton(
                      product: product,
                      onArchive: onArchive,
                      onDisableStock: onDisableStock,
                      onEdit: onEdit,
                      onEditMedia: onEditMedia,
                      onEditPrice: onEditPrice,
                      onPackagingSettings: onPackagingSettings,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
