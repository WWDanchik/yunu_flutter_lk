import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_sku_relations_result.freezed.dart';
part 'marketplace_sku_relations_result.g.dart';

@freezed
class MarketplaceSkuRelationsResult with _$MarketplaceSkuRelationsResult {
  factory MarketplaceSkuRelationsResult({required List<Article> articles}) =
      _MarketplaceSkuRelationsResult;

  factory MarketplaceSkuRelationsResult.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceSkuRelationsResultFromJson(json);
}

@freezed
class Article with _$Article {
  factory Article({
    required String article,
    required List<Marketplace> marketplaces,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Marketplace with _$Marketplace {
  factory Marketplace({
    @JsonKey(name: 'marketplace_name') required String name,
    required List<Cabinet> cabinets,
  }) = _Marketplace;

  factory Marketplace.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceFromJson(json);
}

@freezed
class Cabinet with _$Cabinet {
  factory Cabinet({
    @JsonKey(name: 'cabinet_name') required String name,
    @JsonKey(name: 'marketplace_sku') String? marketplaceSku,
    @JsonKey(name: 'is_dimensions_diff') required bool isDimensionsDiff,
    required List<Relation> relations,
  }) = _Cabinet;

  factory Cabinet.fromJson(Map<String, dynamic> json) =>
      _$CabinetFromJson(json);
}

@freezed
class Relation with _$Relation {
  factory Relation({
    @JsonKey(name: 'delivery_type_name') required String deliveryTypeName,
    @JsonKey(name: 'is_related') required bool isRelated,
  }) = _Relation;

  factory Relation.fromJson(Map<String, dynamic> json) =>
      _$RelationFromJson(json);
}
