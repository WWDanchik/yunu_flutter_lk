import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/viewmodels/dashboard/dashboard.dart';

import 'package:yunu_lk_flutter/views/widgets/base_scaffold.dart';
import 'package:yunu_lk_flutter/views/widgets/dashboard/dashboard_chart.dart';
import 'package:yunu_lk_flutter/views/widgets/dashboard/dashboard_marketplace_filter.dart';
import 'package:yunu_lk_flutter/views/widgets/dashboard/dashboard_today_stats.dart';

class DashboardScreen extends ConsumerWidget {
  final _scrollController = ScrollController();
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(dashboardMarketplaceFilterStateProvider);
    return BaseScaffold(
      appBarBottom: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
              ),
              child: DashboardMarketplaceFilter(),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 8),
          child: Column(
            children: [
              filter.isEmpty ? SizedBox.shrink() : DashboardTodayStats(),
            ],
          ),
        ),
      ),
    );
  }
}
