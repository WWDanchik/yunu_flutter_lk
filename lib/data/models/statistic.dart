import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
class TodayResult with _$TodayResult {
  const factory TodayResult({
    required Revenue revenue,
    required Orders orders,
    required Marginality marginality,
    required AverageCheck averageCheck,
  }) = _TodayResult;

  factory TodayResult.fromJson(Map<String, dynamic> json) =>
      _$TodayResultFromJson(json);
}

@freezed
class Revenue with _$Revenue {
  const factory Revenue({
    required int today,
    required int month,
    required int yesterday,
    required int dinamicMonth,
    required int dinamicYesterday,
  }) = _Revenue;

  factory Revenue.fromJson(Map<String, dynamic> json) =>
      _$RevenueFromJson(json);
}

@freezed
class Orders with _$Orders {
  const factory Orders({
    required int today,
    required int month,
    required int yesterday,
    required int dinamicMonth,
    required int dinamicYesterday,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

@freezed
class Marginality with _$Marginality {
  const factory Marginality({
    required int today,
    required int month,
    required int yesterday,
    required int dinamicMonth,
    required int dinamicYesterday,
  }) = _Marginality;

  factory Marginality.fromJson(Map<String, dynamic> json) =>
      _$MarginalityFromJson(json);
}

@freezed
class AverageCheck with _$AverageCheck {
  const factory AverageCheck({
    required int today,
    required int month,
    required int yesterday,
    required int dinamicMonth,
    required int dinamicYesterday,
  }) = _AverageCheck;

  factory AverageCheck.fromJson(Map<String, dynamic> json) =>
      _$AverageCheckFromJson(json);
}
