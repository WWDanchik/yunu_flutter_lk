import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/data/models/shared/message.dart';
import 'package:yunu_lk_flutter/providers/product_repository_provider.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product.dart';

class ProductDisableStockScreen extends ConsumerStatefulWidget {
  final Product product;
  const ProductDisableStockScreen({super.key, required this.product});

  @override
  _ProductDisableStockScreenState createState() =>
      _ProductDisableStockScreenState();
}

class _ProductDisableStockScreenState
    extends ConsumerState<ProductDisableStockScreen> {
  Map<String, bool> loadingMap = {};
  void _showErrorToast(String text) {
    toastification.show(
      context: context,
      autoCloseDuration: Duration(seconds: 2),
      dragToClose: true,
      dismissDirection: DismissDirection.down,
      style: ToastificationStyle.fillColored,
      type: ToastificationType.error,
      title: RichText(text: TextSpan(text: text)),
    );
  }

  void _showSuccessToast(String text) {
    toastification.dismissAll();
    toastification.show(
      context: context,
      autoCloseDuration: Duration(seconds: 2),
      dragToClose: true,
      dismissDirection: DismissDirection.down,
      style: ToastificationStyle.fillColored,
      type: ToastificationType.success,
      title: RichText(text: TextSpan(text: text)),
    );
  }

  void _handleChange(
    Future<ApiResponse<Message>> Function() apiCall,
    Function(String message) onSuccess,
    String loadingKey,
  ) async {
    setState(() {
      loadingMap[loadingKey] = true;
    });
    try {
      final response = await apiCall();
      response.when(
        error: (status, errors) {
          for (final error in errors) {
            _showErrorToast(error.message);
          }
        },
        ok: (status, result) {
          onSuccess(result.message);
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
    final productRepository = ref.watch(productRepositoryProvider);
    final viewUpdateStocksSettings = ref.watch(
      viewUpdateStocksSettingsProvider(widget.product.id),
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.product.article)),
      body: viewUpdateStocksSettings.when(
        data: (data) {
          return data.when(
            ok: (status, result) {
              final marketplaceList = result.cabinets.entries;

              return ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children:
                    marketplaceList.map((entry) {
                      final cabinet = entry.value;
                      return SwitchListTile(
                        value: !cabinet.isDisabled,
                        onChanged:
                            loadingMap.containsKey(cabinet.cabinetId.toString())
                                ? null
                                : (value) {
                                  _handleChange(
                                    () => productRepository
                                        .changeUpdateStocksSettings(
                                          widget.product.id,
                                          [
                                            {
                                              "cabinet_id": cabinet.cabinetId,
                                              "is_disabled": !value,
                                            },
                                          ],
                                        ),
                                    (message) {
                                      ref.invalidate(
                                        viewUpdateStocksSettingsProvider(
                                          widget.product.id,
                                        ),
                                      );
                                      _showSuccessToast(message);
                                    },
                                    cabinet.cabinetId.toString(),
                                  );
                                },
                        title: Text(cabinet.cabinetName),
                      );
                    }).toList(),
              );
            },
            error:
                (status, errors) =>
                    Center(child: Text('Ошибка: ${errors.join(', ')}')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text(error.toString()),
      ),
    );
  }
}
