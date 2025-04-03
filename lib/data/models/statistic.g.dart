// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayResultImpl _$$TodayResultImplFromJson(Map<String, dynamic> json) =>
    _$TodayResultImpl(
      revenue: Revenue.fromJson(json['revenue'] as Map<String, dynamic>),
      orders: Orders.fromJson(json['orders'] as Map<String, dynamic>),
      marginality: Marginality.fromJson(
        json['marginality'] as Map<String, dynamic>,
      ),
      averageCheck: AverageCheck.fromJson(
        json['averageCheck'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$TodayResultImplToJson(_$TodayResultImpl instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'orders': instance.orders,
      'marginality': instance.marginality,
      'averageCheck': instance.averageCheck,
    };

_$RevenueImpl _$$RevenueImplFromJson(Map<String, dynamic> json) =>
    _$RevenueImpl(
      today: (json['today'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      yesterday: (json['yesterday'] as num).toInt(),
      dinamicMonth: (json['dinamicMonth'] as num).toInt(),
      dinamicYesterday: (json['dinamicYesterday'] as num).toInt(),
    );

Map<String, dynamic> _$$RevenueImplToJson(_$RevenueImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'month': instance.month,
      'yesterday': instance.yesterday,
      'dinamicMonth': instance.dinamicMonth,
      'dinamicYesterday': instance.dinamicYesterday,
    };

_$OrdersImpl _$$OrdersImplFromJson(Map<String, dynamic> json) => _$OrdersImpl(
  today: (json['today'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  yesterday: (json['yesterday'] as num).toInt(),
  dinamicMonth: (json['dinamicMonth'] as num).toInt(),
  dinamicYesterday: (json['dinamicYesterday'] as num).toInt(),
);

Map<String, dynamic> _$$OrdersImplToJson(_$OrdersImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'month': instance.month,
      'yesterday': instance.yesterday,
      'dinamicMonth': instance.dinamicMonth,
      'dinamicYesterday': instance.dinamicYesterday,
    };

_$MarginalityImpl _$$MarginalityImplFromJson(Map<String, dynamic> json) =>
    _$MarginalityImpl(
      today: (json['today'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      yesterday: (json['yesterday'] as num).toInt(),
      dinamicMonth: (json['dinamicMonth'] as num).toInt(),
      dinamicYesterday: (json['dinamicYesterday'] as num).toInt(),
    );

Map<String, dynamic> _$$MarginalityImplToJson(_$MarginalityImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'month': instance.month,
      'yesterday': instance.yesterday,
      'dinamicMonth': instance.dinamicMonth,
      'dinamicYesterday': instance.dinamicYesterday,
    };

_$AverageCheckImpl _$$AverageCheckImplFromJson(Map<String, dynamic> json) =>
    _$AverageCheckImpl(
      today: (json['today'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      yesterday: (json['yesterday'] as num).toInt(),
      dinamicMonth: (json['dinamicMonth'] as num).toInt(),
      dinamicYesterday: (json['dinamicYesterday'] as num).toInt(),
    );

Map<String, dynamic> _$$AverageCheckImplToJson(_$AverageCheckImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'month': instance.month,
      'yesterday': instance.yesterday,
      'dinamicMonth': instance.dinamicMonth,
      'dinamicYesterday': instance.dinamicYesterday,
    };
