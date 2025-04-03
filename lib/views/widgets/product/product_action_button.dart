import 'package:flutter/material.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';

class ProductActionButton extends StatelessWidget {
  final Product product;
  final Function(Product product) onArchive;
  final Function(Product product)? onEdit;
  final Function(Product product)? onDisableStock;
  final Function(Product product)? onEditPrice;
  final Function(Product product)? onEditMedia;
  final Function(Product product)? onPackagingSettings;

  const ProductActionButton({
    super.key,
    required this.product,
    required this.onArchive,
    this.onEdit,
    this.onDisableStock,
    this.onEditPrice,
    this.onEditMedia,
    this.onPackagingSettings,
  });

  void _handleAction(Function(Product)? action) {
    if (action != null) {
      action(product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.more_vert, color: Colors.grey.shade600),
      splashRadius: 20,
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
    );
  }
}
