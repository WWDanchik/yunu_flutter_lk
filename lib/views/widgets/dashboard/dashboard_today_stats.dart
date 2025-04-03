import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yunu_lk_flutter/viewmodels/dashboard/dashboard.dart';

import '../stat_card.dart';

class DashboardTodayStats extends ConsumerWidget {
  const DashboardTodayStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayStats = ref.watch(dashboardTodayProvider);

    return todayStats.when(
      skipLoadingOnReload: true,
      data: (dataResponse) {
        final stats = [
          _buildStatCard(
            title: "Выручка",
            data: dataResponse.revenue,
            unit: "₽",
          ),
          _buildStatCard(
            title: "Заказы",
            data: dataResponse.orders,
            unit: "шт.",
          ),
          _buildStatCard(
            title: "Маржинальность",
            data: dataResponse.marginality,
            unit: "%",
          ),
          _buildStatCard(
            title: "Средний чек",
            data: dataResponse.averageCheck,
            unit: "₽",
          ),
        ];

        return SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: stats.length,
            separatorBuilder: (_, __) => const SizedBox(width: 4),
            itemBuilder: (_, index) => stats[index],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Ошибка: $error')),
    );
  }

  Widget _buildStatCard({
    required String title,
    required dynamic data,
    String unit = "",
  }) {
    return SizedBox(
      width: 300,
      child: StatCard(
        title: title,
        todayValue: data.today.toString(),
        yesterdayValue: data.yesterday.toString(),
        monthValue: data.month.toString(),
        unit: unit,
      ),
    );
  }
}
