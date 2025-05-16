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

extension ProductDetailFormDataExtension on ProductDetail {
  Map<String, dynamic> toFormData() {
    final Map<String, dynamic> data = {};

    // data['id'] = id;
    // data['type'] = type;
    // data['article'] = article;
    // data['category_id'] = categoryId;
    data['name'] = name;
    // data['price'] = price;
    // data['old_price'] = oldPrice;
    // data['quantity'] = quantity;
    // data['WB_FBO'] = wbFbo;
    // data['photo'] = photo;
    // data['reserve'] = reserve;
    // data['marriage'] = marriage;
    // data['is_fragile'] = isFragile ? 1 : 0;
    // data['is_with_video_record'] = isWithVideoRecord ? 1 : 0;
    // data['is_required_cis'] = isRequiredCis ? 1 : 0;
    // data['instruction_link'] = instructionLink;
    // data['instruction_text'] = instructionText;
    // data['is_box'] = isBox ? 1 : 0;
    // data['is_pack_in_bubble_wrap'] = isPackInBubbleWrap ? 1 : 0;
    // data['is_pack_in_cardboard'] = isPackInCardboard ? 1 : 0;
    // data['is_hidden'] = isHidden ? 1 : 0;
    // data['is_fifo'] = isFifo ? 1 : 0;
    // data['is_dimensions_diff'] = isDimensionsDiff ? 1 : 0;
    // data['country'] = country;
    // data['weight'] = weight;
    // data['measured_in_warehouse'] = measuredInWarehouse ? 1 : 0;
    // data['height'] = height;
    // data['width'] = width;
    // data['length'] = length;
    // data['volume'] = volume;
    // data['comission'] = comission;
    // data['foreign_purchase_price'] = foreignPurchasePrice;
    // data['foreign_purchase_price_currency_symbol'] =
    //     foreignPurchasePriceCurrencySymbol;
    // data['foreign_delivery_price'] = foreignDeliveryPrice;
    // data['foreign_delivery_price_currency_symbol'] =
    //     foreignDeliveryPriceCurrencySymbol;
    // data['description'] = description;
    // data['manufacturer'] = manufacturer;
    // data['can_be_removed'] = canBeRemoved ? 1 : 0;

    // // Handle marketplaces
    // data['marketplaces[YANDEX_MARKET_FBS]'] =
    //     marketplaces.yandexMarketFbs.toString().split('.').last;
    // data['marketplaces[YANDEX_MARKET_FBS_FAST]'] =
    //     marketplaces.yandexMarketFbsFast.toString().split('.').last;
    // data['marketplaces[WILDBERRIES_FBS]'] =
    //     marketplaces.wildberriesFbs.toString().split('.').last;
    // data['marketplaces[OZON_FBS]'] =
    //     marketplaces.ozonFbs.toString().split('.').last;
    // data['marketplaces[OZON_REAL_FBS_EXPRESS]'] =
    //     marketplaces.ozonRealFbsExpress.toString().split('.').last;
    // data['marketplaces[SBER_FBS]'] =
    //     marketplaces.sberFbs.toString().split('.').last;

    // // Handle articles as array
    // for (int i = 0; i < articles.length; i++) {
    //   data['articles[$i][article]'] = articles[i].article;
    //   data['articles[$i][is_main]'] = articles[i].isMain ? 1 : 0;
    // }

    // // Handle barcodes as array
    // for (int i = 0; i < barcodes.length; i++) {
    //   data['barcodes[$i]'] = barcodes[i];
    // }

    // // Handle photos as array
    // for (int i = 0; i < photos.length; i++) {
    //   if (photos[i].id != null) {
    //     data['photos[$i][id]'] = photos[i].id;
    //   }
    //   data['photos[$i][file]'] = photos[i].file;
    //   data['photos[$i][is_main]'] = photos[i].isMain ? 1 : 0;
    // }

    // // Handle child products if any
    // if (childProducts != null && childProducts!.isNotEmpty) {
    //   for (int i = 0; i < childProducts!.length; i++) {
    //     data['child_products[$i][id]'] = childProducts![i].id;
    //     data['child_products[$i][uid]'] = childProducts![i].uid;
    //     data['child_products[$i][name]'] = childProducts![i].name;
    //     data['child_products[$i][count]'] = childProducts![i].count;
    //     data['child_products[$i][is_box]'] = childProducts![i].isBox;
    //   }
    // }

    return data;
  }
}
