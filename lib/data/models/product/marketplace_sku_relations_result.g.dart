// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketplace_sku_relations_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketplaceSkuRelationsResultImpl
_$$MarketplaceSkuRelationsResultImplFromJson(Map<String, dynamic> json) =>
    _$MarketplaceSkuRelationsResultImpl(
      articles:
          (json['articles'] as List<dynamic>)
              .map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$MarketplaceSkuRelationsResultImplToJson(
  _$MarketplaceSkuRelationsResultImpl instance,
) => <String, dynamic>{'articles': instance.articles};

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      article: json['article'] as String,
      marketplaces:
          (json['marketplaces'] as List<dynamic>)
              .map((e) => Marketplace.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'article': instance.article,
      'marketplaces': instance.marketplaces,
    };

_$MarketplaceImpl _$$MarketplaceImplFromJson(Map<String, dynamic> json) =>
    _$MarketplaceImpl(
      name: json['marketplace_name'] as String,
      cabinets:
          (json['cabinets'] as List<dynamic>)
              .map((e) => Cabinet.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$MarketplaceImplToJson(_$MarketplaceImpl instance) =>
    <String, dynamic>{
      'marketplace_name': instance.name,
      'cabinets': instance.cabinets,
    };

_$CabinetImpl _$$CabinetImplFromJson(Map<String, dynamic> json) =>
    _$CabinetImpl(
      name: json['cabinet_name'] as String,
      marketplaceSku: json['marketplace_sku'] as String?,
      isDimensionsDiff: json['is_dimensions_diff'] as bool,
      relations:
          (json['relations'] as List<dynamic>)
              .map((e) => Relation.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$CabinetImplToJson(_$CabinetImpl instance) =>
    <String, dynamic>{
      'cabinet_name': instance.name,
      'marketplace_sku': instance.marketplaceSku,
      'is_dimensions_diff': instance.isDimensionsDiff,
      'relations': instance.relations,
    };

_$RelationImpl _$$RelationImplFromJson(Map<String, dynamic> json) =>
    _$RelationImpl(
      deliveryTypeName: json['delivery_type_name'] as String,
      isRelated: json['is_related'] as bool,
    );

Map<String, dynamic> _$$RelationImplToJson(_$RelationImpl instance) =>
    <String, dynamic>{
      'delivery_type_name': instance.deliveryTypeName,
      'is_related': instance.isRelated,
    };
