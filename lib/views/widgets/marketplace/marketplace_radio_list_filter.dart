import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/viewmodels/marketplace/marketplace.dart';

class MarketplaceRadioListFilter extends ConsumerWidget {
  final Set<String> selectedNames;
  final void Function(Set<String>) onSelectionChanged;

  const MarketplaceRadioListFilter({
    super.key,
    required this.selectedNames,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncList = ref.watch(marketplaceListProvider);

    return switch (asyncList) {
      AsyncData(:final value) => value.when(
        error: (status, errors) {
          for (final error in errors) {
            toastification.show(
              context: context,
              autoCloseDuration: const Duration(seconds: 5),
              dragToClose: true,
              dismissDirection: DismissDirection.down,
              style: ToastificationStyle.fillColored,
              type: ToastificationType.error,
              title: RichText(text: TextSpan(text: error.message)),
            );
          }
          return const SizedBox.shrink();
        },
        ok: (status, result) {
          return Column(
            children:
                result.marketplaces.map((marketplace) {
                  final isSelected =
                      selectedNames.isNotEmpty &&
                      selectedNames.first == marketplace.name;
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      if (isSelected) {
                        onSelectionChanged({});
                      } else {
                        onSelectionChanged({marketplace.name});
                      }
                    },
                    child: AbsorbPointer(
                      child: RadioListTile<String>(
                        value: marketplace.name,
                        groupValue:
                            selectedNames.isNotEmpty
                                ? selectedNames.first
                                : null,
                        onChanged: (_) {},
                        title: Text(
                          marketplace.name,
                          style: const TextStyle(fontSize: 12),
                        ),
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  );
                }).toList(),
          );
        },
      ),
      _ => Center(child: CircularProgressIndicator()),
    };
  }
}
