import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/data/models/marketplace_list_result.dart';
import 'package:yunu_lk_flutter/viewmodels/marketplace/marketplace.dart';
import 'package:yunu_lk_flutter/views/widgets/selection_filter.dart';

class MarketplaceCheckboxFilter extends ConsumerWidget {
  final Set<String> selectedNames;
  final void Function(Set<String>) onSelectionChanged;

  const MarketplaceCheckboxFilter({
    super.key,
    required this.selectedNames,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncList = ref.watch(marketplaceListProvider);

    late final controller = SelectionFilterController<Marketplace, String>(
      selectedIds: selectedNames,
      onSelectionChanged: onSelectionChanged,
      getId: (m) => m.name,
    );

    ref.listen(marketplaceListProvider, (previous, next) {
      next.whenData(
        (value) => value.when(
          ok: (status, result) {
            if (selectedNames.isEmpty) {
              controller.selectAll(result.marketplaces);
            }
          },
          error: (status, errors) {},
        ),
      );
    });

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
          return SelectionFilter<Marketplace, String>(
            items: result.marketplaces,
            controller: SelectionFilterController(
              selectedIds: selectedNames,
              onSelectionChanged: onSelectionChanged,
              getId: (marketplace) => marketplace.name,
            ),
            itemBuilder: (context, marketplace, isSelected, onTap) {
              return CheckboxListTile(
                title: Text(marketplace.name),

                value: isSelected,
                onChanged: (bool? value) {
                  onTap();
                },

                secondary: const Icon(Icons.store_outlined),
              );
            },
          );
        },
      ),
      _ => Center(child: CircularProgressIndicator()),
    };
  }
}
