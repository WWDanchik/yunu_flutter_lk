import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:yunu_lk_flutter/viewmodels/dashboard/dashboard.dart';
import 'package:yunu_lk_flutter/views/widgets/chart/chart.dart';

class DashboardChart extends ConsumerWidget {
  const DashboardChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardRecived = ref.watch(dashboardReceivedProvider);

    return dashboardRecived.when(
      skipLoadingOnReload: true,
      data: (dataResponse) {
        return dataResponse.when(
          ok: (status, result) {
            final data = result.data;
            final salesDataConfig = ChartConfig(
              lines: [
                LineConfig(
                  label: "FBO",
                  color: Colors.blueAccent,
                  showDots: true,
                  data: data.ozonFbs,
                  width: 3,
                  curveSmoothness: 0.6,
                ),
                LineConfig(
                  label: "FBO",
                  color: Colors.green,
                  showDots: true,
                  data: data.sberFbs,
                  width: 3,
                  curveSmoothness: 0.6,
                ),
                LineConfig(
                  label: "FBO",
                  color: Colors.redAccent,
                  showDots: true,
                  data: data.yandexMarketFbs,
                  width: 3,
                  curveSmoothness: 0.6,
                ),
              ],
              xAxis: AxisConfig(
                formatLabel: (date) =>
                    DateFormat('MMM dd').format(DateTime.parse(date)),
              ),
              yAxis: AxisConfig(
                formatLabel: (value) => '\$${value.split('.')[0]}',
              ),
              style: ChartStyle(
                backgroundColor: Colors.white,
                aspectRatio: 1.6,
                padding: const EdgeInsets.all(0),
              ),
            );

            return Card(
              color: Colors.white,
              elevation: 0.1,
              child: ReusableChart(config: salesDataConfig),
            );
          },
          error: (status, errors) {
            return SizedBox.shrink();
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Ошибка: $error')),
    );
  }
}
