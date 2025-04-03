import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/data/models/product/product_update.dart';
import 'package:yunu_lk_flutter/providers/product_repository_provider.dart';

class ProductPackagingAndLabelingSettings extends ConsumerStatefulWidget {
  final Product product;
  final Function(Product) updateProduct;

  const ProductPackagingAndLabelingSettings({
    super.key,
    required this.product,
    required this.updateProduct,
  });

  @override
  _ProductPackagingAndLabelingSettingsState createState() =>
      _ProductPackagingAndLabelingSettingsState();
}

class _ProductPackagingAndLabelingSettingsState
    extends ConsumerState<ProductPackagingAndLabelingSettings> {
  late Product _product;
  bool isLoading = false;

  Map<String, bool> loadingMap = {};

  @override
  void initState() {
    super.initState();
    _product = widget.product;
  }

  void _updateProduct(Product updatedProduct) {
    setState(() {
      _product = updatedProduct;
    });

    widget.updateProduct(updatedProduct);
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

  void _handleChange(
    bool value,
    Future<ApiResponse<ProductUpdate>> Function(bool value) apiCall,
    void Function(Product product) onSuccess,
    String loadingKey,
  ) async {
    setState(() {
      loadingMap[loadingKey] = true;
    });
    try {
      final response = await apiCall(value);

      response.when(
        error: (status, errors) {
          for (final error in errors) {
            _showErrorToast(error.message);
          }
        },
        ok: (status, result) {
          onSuccess(result.product);
        },
      );
    } catch (e) {
      _showErrorToast(e.toString());
    } finally {
      setState(() {
        loadingMap.remove(loadingKey);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final productRepository = ref.read(productRepositoryProvider);

    void setIsFragile(bool value) async {
      _handleChange(
        value,
        (value) {
          return productRepository.setFragile(value, _product.id);
        },
        (product) {
          _updateProduct(product);
        },
        "isFragile",
      );
    }

    void setIsWithVideoRecord(bool value) async {
      _handleChange(
        value,
        (value) {
          return productRepository.setWithVideoRecord(value, widget.product.id);
        },
        (product) {
          _updateProduct(product);
        },
        "isWithVideoRecord",
      );
    }

    void setIsPackInCardboard(bool value) async {
      _handleChange(
        value,
        (value) {
          return productRepository.saveIsPackInCardboard(
            value,
            widget.product.id,
          );
        },
        (product) {
          _updateProduct(product);
        },
        "isPackInCardboard",
      );
    }

    void segtIsRequiredCis(bool value) {
      _handleChange(
        value,
        (value) {
          return productRepository.setRequiredCis(value, widget.product.id);
        },
        (product) {
          _updateProduct(product);
        },
        "isRequiredCis",
      );
    }

    void setFifo(bool value) {
      _handleChange(
        value,
        (value) {
          return productRepository.setFifo(value, widget.product.id);
        },
        (product) {
          _updateProduct(product);
        },
        "isFifo",
      );
    }

    void setIsPackInBubbleWrap(bool value) async {
      _handleChange(
        value,
        (value) {
          return productRepository.saveIsPackInBubbleWrap(
            value,
            widget.product.id,
          );
        },
        (product) {
          _updateProduct(product);
        },
        "isPackInBubbleWrap",
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(_product.article)),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SwitchListTile(
                    title: const Text('Хрупкий товар'),
                    value: _product.isFragile,
                    onChanged:
                        loadingMap.containsKey("isFragile")
                            ? null
                            : setIsFragile,
                    secondary: const Icon(Icons.wine_bar),
                  ),
                  SwitchListTile(
                    title: const Text('Собран под камерой'),
                    value: _product.isWithVideoRecord,
                    onChanged:
                        loadingMap.containsKey("isWithVideoRecord")
                            ? null
                            : setIsWithVideoRecord,
                    secondary: const Icon(Icons.videocam),
                  ),
                  SwitchListTile(
                    title: const Text('Упаковать в картон'),
                    value: _product.isPackInCardboard,
                    onChanged:
                        loadingMap.containsKey("isPackInCardboard")
                            ? null
                            : setIsPackInCardboard,
                    secondary: SvgPicture.asset('assets/svg/cardboard.svg'),
                  ),
                  SwitchListTile(
                    title: const Text('Упаковать в ВПП'),
                    value: _product.isPackInBubbleWrap,
                    onChanged:
                        loadingMap.containsKey("isPackInBubbleWrap")
                            ? null
                            : setIsPackInBubbleWrap,
                    secondary: Icon(Icons.grain),
                  ),
                  SwitchListTile(
                    title: const Text('Честный знак'),
                    value: _product.isRequiredCis,
                    onChanged:
                        loadingMap.containsKey("isRequiredCis")
                            ? null
                            : segtIsRequiredCis,
                    secondary: const Icon(Icons.verified),
                  ),
                  SwitchListTile(
                    title: const Text('FIFO'),
                    value: _product.isFifo,
                    onChanged:
                        loadingMap.containsKey("isFifo") ? null : setFifo,
                    secondary: const Icon(Icons.av_timer),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
