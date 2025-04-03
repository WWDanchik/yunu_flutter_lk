import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_list_result.freezed.dart';
part 'marketplace_list_result.g.dart';

@freezed
class MarketplaceResult with _$MarketplaceResult {
  const factory MarketplaceResult({required List<Marketplace> marketplaces}) =
      _MarketplaceResult;

  factory MarketplaceResult.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceResultFromJson(json);
}

@freezed
class Marketplace with _$Marketplace {
  const factory Marketplace({
    required int id,
    required String name,
    required String color,
    required MarketplaceOld old,
  }) = _Marketplace;

  factory Marketplace.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceFromJson(json);
}

@freezed
class MarketplaceOld with _$MarketplaceOld {
  const factory MarketplaceOld({
    String? uid,
    String? type,
    String? id,
  }) = _MarketplaceOld;

  factory MarketplaceOld.fromJson(Map<String, dynamic> json) =>
      _$MarketplaceOldFromJson(json);
}
