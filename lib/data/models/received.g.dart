// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateValueDataImpl _$$DateValueDataImplFromJson(Map<String, dynamic> json) =>
    _$DateValueDataImpl(
      date: json['date'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$DateValueDataImplToJson(_$DateValueDataImpl instance) =>
    <String, dynamic>{'date': instance.date, 'value': instance.value};

_$ReceivedResultImpl _$$ReceivedResultImplFromJson(Map<String, dynamic> json) =>
    _$ReceivedResultImpl(
      data: Received.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceivedResultImplToJson(
  _$ReceivedResultImpl instance,
) => <String, dynamic>{'data': instance.data};

_$ReceivedImpl _$$ReceivedImplFromJson(Map<String, dynamic> json) =>
    _$ReceivedImpl(
      sberFbs:
          (json['SBER_FBS'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      ozonRealFbsExpress:
          (json['OZON_REAL_FBS_EXPRESS'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      wildberriesFbsHeavy:
          (json['WILDBERRIES_FBS_HEAVY'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      wildberriesFbs:
          (json['WILDBERRIES_FBS'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      yandexMarketFbs:
          (json['YANDEX_MARKET_FBS'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      wildberriesFbo:
          (json['WILDBERRIES_FBO'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      yandexMarketFbsFast:
          (json['YANDEX_MARKET_FBS_FAST'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      ozonFbs:
          (json['OZON_FBS'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
      total:
          (json['total'] as List<dynamic>)
              .map((e) => DateValueData.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ReceivedImplToJson(_$ReceivedImpl instance) =>
    <String, dynamic>{
      'SBER_FBS': instance.sberFbs,
      'OZON_REAL_FBS_EXPRESS': instance.ozonRealFbsExpress,
      'WILDBERRIES_FBS_HEAVY': instance.wildberriesFbsHeavy,
      'WILDBERRIES_FBS': instance.wildberriesFbs,
      'YANDEX_MARKET_FBS': instance.yandexMarketFbs,
      'WILDBERRIES_FBO': instance.wildberriesFbo,
      'YANDEX_MARKET_FBS_FAST': instance.yandexMarketFbsFast,
      'OZON_FBS': instance.ozonFbs,
      'total': instance.total,
    };
