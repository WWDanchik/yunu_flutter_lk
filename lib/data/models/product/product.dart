import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

enum MarketplaceEnum {
  yandexMarketFbs,
  yandexMarketFbsFast,
  wildberriesFbs,
  ozonFbs,
  ozonRealFbsExpress,
  sberFbs,
}

extension MarketplaceX on MarketplaceEnum {
  Widget icon(bool? isActive) {
    switch (this) {
      case MarketplaceEnum.yandexMarketFbs:
      case MarketplaceEnum.yandexMarketFbsFast:
        return SvgPicture.asset(
          'assets/svg/yandex_circle.svg',
          colorFilter:
              isActive == false
                  ? const ColorFilter.matrix([
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ])
                  : null,
        );
      case MarketplaceEnum.ozonFbs:
      case MarketplaceEnum.ozonRealFbsExpress:
        return SvgPicture.asset(
          'assets/svg/ozon_circle.svg',
          colorFilter:
              isActive == false
                  ? const ColorFilter.matrix([
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ])
                  : null,
        );

      case MarketplaceEnum.sberFbs:
        return SvgPicture.asset(
          'assets/svg/mm_circle.svg',
          colorFilter:
              isActive == false
                  ? const ColorFilter.matrix([
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ])
                  : null,
        );
      case MarketplaceEnum.wildberriesFbs:
        return SvgPicture.asset(
          'assets/svg/wildberries_circle.svg',
          colorFilter:
              isActive == false
                  ? const ColorFilter.matrix([
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ])
                  : null,
        );
    }
  }
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required int type,
    required String article,
    @JsonKey(name: 'categoryId') required int categoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    required String name,
    required double price,
    required double oldPrice,
    required int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    required String photo,
    required int reserve,
    required int marriage,

    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'is_disabled_update_stock') bool? isDisabledUpdateStock,
    @JsonKey(name: 'calculated_purchase_price') double? calculatedPurchasePrice,
    @JsonKey(name: 'is_fragile') required bool isFragile,
    @JsonKey(name: 'is_with_video_record') required bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') required bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') required bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') required bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    @JsonKey(name: 'is_fifo') required bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') required bool isDimensionsDiff,
    String? country,
    required bool measuredInWarehouse,
    double? height,
    double? width,
    double? length,
    double? volume,
    int? comission,
    double? weight,
    Marketplaces? marketplaces,
    @JsonKey(name: 'foreign_purchase_price') double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    String? foreignDeliveryPriceCurrencySymbol,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class FboStock with _$FboStock {
  const factory FboStock({
    required int total,
    @JsonKey(name: 'by_delivery_type') required List<dynamic> byDeliveryType,
  }) = _FboStock;

  factory FboStock.fromJson(Map<String, dynamic> json) =>
      _$FboStockFromJson(json);
}

@freezed
class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int id,
    required int type,
    required String article,
    int? categoryId,
    @JsonKey(name: "category_name") required String categoryName,
    required String name,
    required double price,
    required double oldPrice,
    required int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'fbo_stocks') FboStock? fboStocks,
    required String photo,
    required int reserve,
    required int marriage,
    @JsonKey(name: 'is_fragile') required bool isFragile,
    @JsonKey(name: 'is_with_video_record') required bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') required bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') required bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') required bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    @JsonKey(name: 'is_fifo') required bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') required bool isDimensionsDiff,
    String? country,
    double? weight,
    required bool measuredInWarehouse,
    double? height,
    double? width,
    double? length,
    double? volume,
    int? comission,
    required Marketplaces marketplaces,
    @JsonKey(name: 'foreign_purchase_price') double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    String? foreignDeliveryPriceCurrencySymbol,
    String? description,
    required List<String> barcodes,
    required List<Article> articles,
    String? manufacturer,
    required List<Photo> photos,
    required bool canBeRemoved,

    @JsonKey(name: "child_products") List<ChildProduct>? childProducts,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}

@freezed
class ChildProduct with _$ChildProduct {
  const factory ChildProduct({
    required int id,
    required String uid,
    required String name,
    required int count,
    @JsonKey(name: "is_box") required int isBox,
  }) = _ChildProduct;

  factory ChildProduct.fromJson(Map<String, dynamic> json) =>
      _$ChildProductFromJson(json);
}

enum MarketplaceStatus {
  @JsonValue('SUCCESS')
  success,

  @JsonValue('LACK_LINK_AND_WITH_CATEGORY')
  lackLinkAndWithCategory,

  @JsonValue('LACK_LINK')
  lackLink,
}

@freezed
class Marketplaces with _$Marketplaces {
  const factory Marketplaces({
    @JsonKey(name: 'YANDEX_MARKET_FBS')
    required MarketplaceStatus yandexMarketFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    required MarketplaceStatus yandexMarketFbsFast,
    @JsonKey(name: 'WILDBERRIES_FBS') required MarketplaceStatus wildberriesFbs,
    @JsonKey(name: 'OZON_FBS') required MarketplaceStatus ozonFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    required MarketplaceStatus ozonRealFbsExpress,
    @JsonKey(name: 'SBER_FBS') required MarketplaceStatus sberFbs,
  }) = _Marketplaces;

  factory Marketplaces.fromJson(Map<String, dynamic> json) =>
      _$MarketplacesFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({required String article, required bool isMain}) =
      _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({int? id, required String file, required bool isMain}) =
      _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
