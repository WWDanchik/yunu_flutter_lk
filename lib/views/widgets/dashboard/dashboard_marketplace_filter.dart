import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/viewmodels/dashboard/dashboard.dart';
import 'package:yunu_lk_flutter/views/widgets/marketplace/marpletplace_choice_chips_filter.dart';

class DashboardMarketplaceFilter extends ConsumerWidget {
  const DashboardMarketplaceFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(dashboardMarketplaceFilterStateProvider);

    return MarketplaceChoiceChipsFilter(
      selectedNames: filter,
      onSelectionChanged: (filter) {
        ref
            .read(dashboardMarketplaceFilterStateProvider.notifier)
            .update(filter);
      },
    );
  }
}
