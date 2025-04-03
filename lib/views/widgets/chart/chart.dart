import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:yunu_lk_flutter/data/models/received.dart';

part 'chart.freezed.dart';

@freezed
class ChartConfig with _$ChartConfig {
  const factory ChartConfig({
    required List<LineConfig> lines,
    required AxisConfig xAxis,
    required AxisConfig yAxis,
    @Default(const ChartStyle()) ChartStyle style,
  }) = _ChartConfig;
}

@freezed
class LineConfig with _$LineConfig {
  const factory LineConfig({
    required String label,
    required Color color,
    required List<DateValueData> data,
    @Default(false) bool showDots,
    @Default(2.0) double width,
    @Default(0.5) double curveSmoothness,
  }) = _LineConfig;
}

String _defaultLabelFormatter(String value) => value;

@freezed
class AxisConfig with _$AxisConfig {
  const factory AxisConfig({
    String? label,
    @Default(true) bool showLabels,
    @Default(_defaultLabelFormatter) String Function(String) formatLabel,
    @Default(true) bool visible,
  }) = _AxisConfig;
}

@freezed
class ChartStyle with _$ChartStyle {
  const factory ChartStyle({
    @Default(Colors.transparent) Color backgroundColor,
    @Default(const EdgeInsets.all(16)) EdgeInsets padding,
    @Default(1.4) double aspectRatio,
  }) = _ChartStyle;
}

class ReusableChart extends ConsumerStatefulWidget {
  final ChartConfig config;
  final bool interactive;

  const ReusableChart({
    super.key,
    required this.config,
    this.interactive = true,
  });

  @override
  ConsumerState<ReusableChart> createState() => _ReusableChartState();
}

class _ReusableChartState extends ConsumerState<ReusableChart> {
  late TransformationController _transformationController;
  FlSpot? _selectedSpot;
  List<String> _allDates = [];
  int _interactedSpotIndex = -1;

  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
    _allDates = widget.config.lines.first.data.map((e) => e.date).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.config.style.padding,
      decoration: BoxDecoration(
          color: widget.config.style.backgroundColor,
          borderRadius: BorderRadius.circular(12)),
      child: AspectRatio(
        aspectRatio: widget.config.style.aspectRatio,
        child: GestureDetector(
          onTapDown: widget.interactive ? _handleTouch : null,
          child: OverflowBox(
            alignment: Alignment.center,
            child: LineChart(
              transformationConfig: FlTransformationConfig(
                scaleAxis: FlScaleAxis.horizontal,
                minScale: 1,
                maxScale: 1000.0,
                panEnabled: true,
                scaleEnabled: true,
                transformationController: _transformationController,
              ),
              LineChartData(
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: _buildLines(),
                titlesData: _buildTitles(),
                lineTouchData: _buildTouchData(),
                minX: 0,
                maxX: _allDates.length.toDouble() - 1,
                minY: 0,
                maxY: _calculateMaxY(),
              ),
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ),
      ),
    );
  }

  List<LineChartBarData> _buildLines() {
    return widget.config.lines.map((line) {
      final spots = _convertToFlSpots(line.data);
      return LineChartBarData(
        spots: spots,
        color: line.color,
        barWidth: line.width,
        isCurved: true,
        curveSmoothness: line.curveSmoothness,
        shadow: const Shadow(color: Colors.black12, blurRadius: 8),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [line.color.withValues(alpha: 0.15), Colors.transparent],
            stops: const [0.1, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        dotData: FlDotData(show: line.showDots),
        gradient: LinearGradient(
          colors: [line.color, line.color.withValues(alpha: 0.5)],
          stops: const [0.1, 1.0],
        ),
      );
    }).toList();
  }

  FlTitlesData _buildTitles() {
    return FlTitlesData(
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        axisNameWidget: Text(
          widget.config.xAxis.label ?? '',
          style: _axisLabelStyle,
        ),
        sideTitles: SideTitles(
          showTitles: widget.config.xAxis.visible,
          reservedSize: 30,
          getTitlesWidget: (value, meta) {
            final index = value.toInt();
            if (index < 0 || index >= _allDates.length) return const Text('');
            return SideTitleWidget(
              meta: meta,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  widget.config.xAxis.formatLabel(_allDates[index]),
                  style: _axisTextStyle,
                ),
              ),
            );
          },
        ),
      ),
      leftTitles: AxisTitles(
        axisNameWidget: Text(
          widget.config.yAxis.label ?? '',
          style: _axisLabelStyle,
        ),
        sideTitles: SideTitles(
          showTitles: widget.config.yAxis.visible,
          reservedSize: 40,
          interval: _calculateYInterval(),
          getTitlesWidget: (value, meta) => SideTitleWidget(
            meta: meta,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                widget.config.yAxis.formatLabel(value.toString()),
                style: _axisTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleTouchInteraction(
      FlTouchEvent event, LineTouchResponse? response) {
    if (!event.isInterestedForInteractions ||
        response?.lineBarSpots == null ||
        response!.lineBarSpots!.isEmpty) {
      setState(() => _interactedSpotIndex = -1);
      return;
    }

    setState(() {
      final touchedSpot = response.lineBarSpots!.first;
      _interactedSpotIndex = touchedSpot.spotIndex;

      _selectedSpot = FlSpot(
        touchedSpot.x,
        touchedSpot.y,
      );
    });
  }

  LineTouchData _buildTouchData() {
    return LineTouchData(
      touchSpotThreshold: 5,
      getTouchLineStart: (_, __) => -double.infinity,
      getTouchLineEnd: (_, __) => double.infinity,
      getTouchedSpotIndicator: (barData, spotIndexes) {
        return spotIndexes.map((spotIndex) {
          return TouchedSpotIndicatorData(
            FlLine(
              color: Colors.redAccent,
              strokeWidth: 1.5,
              dashArray: [8, 2],
            ),
            FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 8,
                  color: Colors.white, // Изменён цвет фона
                  strokeWidth: 2, // Добавлена обводка
                  strokeColor: Colors.lightBlueAccent,
                );
              },
            ),
          );
        }).toList();
      },
      touchTooltipData: LineTouchTooltipData(
        fitInsideHorizontally: true,
        showOnTopOfTheChartBoxArea: true,
        getTooltipColor: (touchedSpot) => Colors.white,
        tooltipBorder: BorderSide(color: Colors.grey),
        maxContentWidth: 200,
        tooltipRoundedRadius: 10,
        getTooltipItems: (spots) {
          return spots.map((lineBarSpot) {
            final rawDate = _allDates[lineBarSpot.x.toInt()];
            final date =
                DateFormat('dd.MM.yyyy').format(DateTime.parse(rawDate));
            final value = lineBarSpot.y.toStringAsFixed(2);

            return LineTooltipItem(
              '',
              const TextStyle(),
              children: [
                TextSpan(
                  children: [
                    // Строка с датой
                    TextSpan(
                      text: '📅 ',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'Дата: ',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: '$date\n', // Перенос строки
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Строка со значением
                    TextSpan(
                      text: '📈 ', // Иконка графика через эмодзи
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'Значение: ',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: value,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }).toList();
        },
      ),
    );
  }

  ExtraLinesData _buildExtraLines() {
    return ExtraLinesData(
      verticalLines: _interactedSpotIndex != -1 && _selectedSpot != null
          ? [
              VerticalLine(
                x: _selectedSpot!.x,
                color: Colors.grey.withValues(alpha: 0.5),
                strokeWidth: 1,
                dashArray: [5, 5],
              )
            ]
          : [],
    );
  }

  List<FlSpot> _convertToFlSpots(List<DateValueData> data) {
    return data.asMap().entries.map((entry) {
      return FlSpot(entry.key.toDouble(), entry.value.value.toDouble());
    }).toList();
  }

  double _calculateMaxY() {
    final maxValues = widget.config.lines
        .map((line) => line.data.map((e) => e.value).reduce(max))
        .toList();
    return maxValues.reduce(max).toDouble() * 1.1;
  }

  double _calculateYInterval() {
    final maxY = _calculateMaxY();
    return (maxY / 4).ceilToDouble();
  }

  TextStyle get _axisLabelStyle => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      );

  TextStyle get _axisTextStyle => const TextStyle(
        fontSize: 10,
        color: Colors.grey,
        shadows: [Shadow(color: Colors.white, blurRadius: 2)],
      );

  void _handleTouch(TapDownDetails details) {
    final box = context.findRenderObject() as RenderBox?;
    if (box == null) return;

    final touchOffset = details.localPosition;
    final matrix = _transformationController.value;
    final invertedMatrix = matrix.clone()..invert();
    final untransformedOffset = MatrixUtils.transformPoint(
      invertedMatrix,
      touchOffset,
    );
    final xRatio = untransformedOffset.dx / box.size.width;
    final dataLength = _allDates.length;
    final index = (xRatio * dataLength).clamp(0, dataLength - 1).round();

    setState(() {
      _selectedSpot = FlSpot(index.toDouble(),
          widget.config.lines.last.data[index].value.toDouble());
    });
  }
}
