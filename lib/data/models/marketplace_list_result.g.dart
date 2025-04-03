// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_list_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketplaceResultImpl _$$MarketplaceResultImplFromJson(
  Map<String, dynamic> json,
) => _$MarketplaceResultImpl(
  marketplaces:
      (json['marketplaces'] as List<dynamic>)
          .map((e) => Marketplace.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$MarketplaceResultImplToJson(
  _$MarketplaceResultImpl instance,
) => <String, dynamic>{'marketplaces': instance.marketplaces};

_$MarketplaceImpl _$$MarketplaceImplFromJson(Map<String, dynamic> json) =>
    _$MarketplaceImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: json['color'] as String,
      old: MarketplaceOld.fromJson(json['old'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarketplaceImplToJson(_$MarketplaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'old': instance.old,
    };

_$MarketplaceOldImpl _$$MarketplaceOldImplFromJson(Map<String, dynamic> json) =>
    _$MarketplaceOldImpl(
      uid: json['uid'] as String?,
      type: json['type'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$MarketplaceOldImplToJson(
  _$MarketplaceOldImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'type': instance.type,
  'id': instance.id,
};
