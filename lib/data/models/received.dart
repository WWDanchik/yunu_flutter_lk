import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fl_chart/fl_chart.dart';
part 'received.freezed.dart';
part 'received.g.dart';

@freezed
class DateValueData with _$DateValueData {
  factory DateValueData({
    required String date,
    required int value,
  }) = _DateValueData;

  factory DateValueData.fromJson(Map<String, dynamic> json) =>
      _$DateValueDataFromJson(json);
}

@freezed
class ReceivedResult with _$ReceivedResult {
  factory ReceivedResult({
    required Received data,
  }) = _ReceivedResult;

  factory ReceivedResult.fromJson(Map<String, dynamic> json) =>
      _$ReceivedResultFromJson(json);
}

@freezed
class Received with _$Received {
  factory Received({
    @JsonKey(name: 'SBER_FBS') required List<DateValueData> sberFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    required List<DateValueData> ozonRealFbsExpress,
    @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
    required List<DateValueData> wildberriesFbsHeavy,
    @JsonKey(name: 'WILDBERRIES_FBS')
    required List<DateValueData> wildberriesFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS')
    required List<DateValueData> yandexMarketFbs,
    @JsonKey(name: 'WILDBERRIES_FBO')
    required List<DateValueData> wildberriesFbo,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    required List<DateValueData> yandexMarketFbsFast,
    @JsonKey(name: 'OZON_FBS') required List<DateValueData> ozonFbs,
    required List<DateValueData> total,
  }) = _Received;

  factory Received.fromJson(Map<String, dynamic> json) =>
      _$ReceivedFromJson(json);
}

extension ReceivedResultChartExtension on Received {
  List<FlSpot> getSberFbsSpots() => _convertToFlSpots(sberFbs);
  List<FlSpot> getOzonRealSpots() => _convertToFlSpots(ozonRealFbsExpress);
  List<FlSpot> getWildberriesHeavySpots() =>
      _convertToFlSpots(wildberriesFbsHeavy);
  List<FlSpot> getTotalSpots() => _convertToFlSpots(total);

  List<String> get allDates => sberFbs.map((e) => e.date).toList();

  List<FlSpot> _convertToFlSpots(List<DateValueData> data) {
    return data.asMap().entries.map((entry) {
      final x = entry.key.toDouble();
      final y = entry.value.value.toDouble();
      return FlSpot(x, y);
    }).toList();
  }
}
