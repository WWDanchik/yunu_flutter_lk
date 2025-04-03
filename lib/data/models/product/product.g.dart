// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImpl(
  id: (json['id'] as num).toInt(),
  type: (json['type'] as num).toInt(),
  article: json['article'] as String,
  categoryId: (json['categoryId'] as num).toInt(),
  categoryName: json['category_name'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toDouble(),
  oldPrice: (json['oldPrice'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  wbFbo: (json['WB_FBO'] as num?)?.toInt(),
  photo: json['photo'] as String,
  reserve: (json['reserve'] as num).toInt(),
  marriage: (json['marriage'] as num).toInt(),
  fboStock:
      json['fbo_stock'] == null
          ? null
          : FboStock.fromJson(json['fbo_stock'] as Map<String, dynamic>),
  isDisabledUpdateStock: json['is_disabled_update_stock'] as bool?,
  calculatedPurchasePrice:
      (json['calculated_purchase_price'] as num?)?.toDouble(),
  isFragile: json['is_fragile'] as bool,
  isWithVideoRecord: json['is_with_video_record'] as bool,
  isRequiredCis: json['is_required_cis'] as bool,
  instructionLink: json['instruction_link'] as String?,
  instructionText: json['instruction_text'] as String?,
  isBox: json['is_box'] as bool,
  isPackInBubbleWrap: json['is_pack_in_bubble_wrap'] as bool,
  isPackInCardboard: json['is_pack_in_cardboard'] as bool,
  isHidden: json['is_hidden'] as bool,
  isFifo: json['is_fifo'] as bool,
  isDimensionsDiff: json['is_dimensions_diff'] as bool,
  country: json['country'] as String?,
  measuredInWarehouse: json['measuredInWarehouse'] as bool,
  height: (json['height'] as num?)?.toDouble(),
  width: (json['width'] as num?)?.toDouble(),
  length: (json['length'] as num?)?.toDouble(),
  volume: (json['volume'] as num?)?.toDouble(),
  comission: (json['comission'] as num?)?.toInt(),
  weight: (json['weight'] as num?)?.toDouble(),
  marketplaces:
      json['marketplaces'] == null
          ? null
          : Marketplaces.fromJson(json['marketplaces'] as Map<String, dynamic>),
  foreignPurchasePrice: (json['foreign_purchase_price'] as num?)?.toDouble(),
  foreignPurchasePriceCurrencySymbol:
      json['foreign_purchase_price_currency_symbol'] as String?,
  foreignDeliveryPrice: (json['foreign_delivery_price'] as num?)?.toDouble(),
  foreignDeliveryPriceCurrencySymbol:
      json['foreign_delivery_price_currency_symbol'] as String?,
);

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'article': instance.article,
      'categoryId': instance.categoryId,
      'category_name': instance.categoryName,
      'name': instance.name,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'quantity': instance.quantity,
      'WB_FBO': instance.wbFbo,
      'photo': instance.photo,
      'reserve': instance.reserve,
      'marriage': instance.marriage,
      'fbo_stock': instance.fboStock,
      'is_disabled_update_stock': instance.isDisabledUpdateStock,
      'calculated_purchase_price': instance.calculatedPurchasePrice,
      'is_fragile': instance.isFragile,
      'is_with_video_record': instance.isWithVideoRecord,
      'is_required_cis': instance.isRequiredCis,
      'instruction_link': instance.instructionLink,
      'instruction_text': instance.instructionText,
      'is_box': instance.isBox,
      'is_pack_in_bubble_wrap': instance.isPackInBubbleWrap,
      'is_pack_in_cardboard': instance.isPackInCardboard,
      'is_hidden': instance.isHidden,
      'is_fifo': instance.isFifo,
      'is_dimensions_diff': instance.isDimensionsDiff,
      'country': instance.country,
      'measuredInWarehouse': instance.measuredInWarehouse,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'volume': instance.volume,
      'comission': instance.comission,
      'weight': instance.weight,
      'marketplaces': instance.marketplaces,
      'foreign_purchase_price': instance.foreignPurchasePrice,
      'foreign_purchase_price_currency_symbol':
          instance.foreignPurchasePriceCurrencySymbol,
      'foreign_delivery_price': instance.foreignDeliveryPrice,
      'foreign_delivery_price_currency_symbol':
          instance.foreignDeliveryPriceCurrencySymbol,
    };

_$FboStockImpl _$$FboStockImplFromJson(Map<String, dynamic> json) =>
    _$FboStockImpl(
      total: (json['total'] as num).toInt(),
      byDeliveryType: json['by_delivery_type'] as List<dynamic>,
    );

Map<String, dynamic> _$$FboStockImplToJson(_$FboStockImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'by_delivery_type': instance.byDeliveryType,
    };

_$ProductDetailImpl _$$ProductDetailImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDetailImpl(
  id: (json['id'] as num).toInt(),
  type: (json['type'] as num).toInt(),
  article: json['article'] as String,
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryName: json['category_name'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toDouble(),
  oldPrice: (json['oldPrice'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  wbFbo: (json['WB_FBO'] as num?)?.toInt(),
  fboStock:
      json['fbo_stock'] == null
          ? null
          : FboStock.fromJson(json['fbo_stock'] as Map<String, dynamic>),
  fboStocks:
      json['fbo_stocks'] == null
          ? null
          : FboStock.fromJson(json['fbo_stocks'] as Map<String, dynamic>),
  photo: json['photo'] as String,
  reserve: (json['reserve'] as num).toInt(),
  marriage: (json['marriage'] as num).toInt(),
  isFragile: json['is_fragile'] as bool,
  isWithVideoRecord: json['is_with_video_record'] as bool,
  isRequiredCis: json['is_required_cis'] as bool,
  instructionLink: json['instruction_link'] as String?,
  instructionText: json['instruction_text'] as String?,
  isBox: json['is_box'] as bool,
  isPackInBubbleWrap: json['is_pack_in_bubble_wrap'] as bool,
  isPackInCardboard: json['is_pack_in_cardboard'] as bool,
  isHidden: json['is_hidden'] as bool,
  isFifo: json['is_fifo'] as bool,
  isDimensionsDiff: json['is_dimensions_diff'] as bool,
  country: json['country'] as String?,
  weight: (json['weight'] as num?)?.toDouble(),
  measuredInWarehouse: json['measuredInWarehouse'] as bool,
  height: (json['height'] as num?)?.toDouble(),
  width: (json['width'] as num?)?.toDouble(),
  length: (json['length'] as num?)?.toDouble(),
  volume: (json['volume'] as num?)?.toDouble(),
  comission: (json['comission'] as num?)?.toInt(),
  marketplaces: Marketplaces.fromJson(
    json['marketplaces'] as Map<String, dynamic>,
  ),
  foreignPurchasePrice: (json['foreign_purchase_price'] as num?)?.toDouble(),
  foreignPurchasePriceCurrencySymbol:
      json['foreign_purchase_price_currency_symbol'] as String?,
  foreignDeliveryPrice: (json['foreign_delivery_price'] as num?)?.toDouble(),
  foreignDeliveryPriceCurrencySymbol:
      json['foreign_delivery_price_currency_symbol'] as String?,
  description: json['description'] as String?,
  barcodes:
      (json['barcodes'] as List<dynamic>).map((e) => e as String).toList(),
  articles:
      (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
  manufacturer: json['manufacturer'] as String?,
  photos:
      (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
  canBeRemoved: json['canBeRemoved'] as bool,
  childProducts:
      (json['child_products'] as List<dynamic>?)
          ?.map((e) => ChildProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ProductDetailImplToJson(_$ProductDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'article': instance.article,
      'categoryId': instance.categoryId,
      'category_name': instance.categoryName,
      'name': instance.name,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'quantity': instance.quantity,
      'WB_FBO': instance.wbFbo,
      'fbo_stock': instance.fboStock,
      'fbo_stocks': instance.fboStocks,
      'photo': instance.photo,
      'reserve': instance.reserve,
      'marriage': instance.marriage,
      'is_fragile': instance.isFragile,
      'is_with_video_record': instance.isWithVideoRecord,
      'is_required_cis': instance.isRequiredCis,
      'instruction_link': instance.instructionLink,
      'instruction_text': instance.instructionText,
      'is_box': instance.isBox,
      'is_pack_in_bubble_wrap': instance.isPackInBubbleWrap,
      'is_pack_in_cardboard': instance.isPackInCardboard,
      'is_hidden': instance.isHidden,
      'is_fifo': instance.isFifo,
      'is_dimensions_diff': instance.isDimensionsDiff,
      'country': instance.country,
      'weight': instance.weight,
      'measuredInWarehouse': instance.measuredInWarehouse,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'volume': instance.volume,
      'comission': instance.comission,
      'marketplaces': instance.marketplaces,
      'foreign_purchase_price': instance.foreignPurchasePrice,
      'foreign_purchase_price_currency_symbol':
          instance.foreignPurchasePriceCurrencySymbol,
      'foreign_delivery_price': instance.foreignDeliveryPrice,
      'foreign_delivery_price_currency_symbol':
          instance.foreignDeliveryPriceCurrencySymbol,
      'description': instance.description,
      'barcodes': instance.barcodes,
      'articles': instance.articles,
      'manufacturer': instance.manufacturer,
      'photos': instance.photos,
      'canBeRemoved': instance.canBeRemoved,
      'child_products': instance.childProducts,
    };

_$ChildProductImpl _$$ChildProductImplFromJson(Map<String, dynamic> json) =>
    _$ChildProductImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
      isBox: (json['is_box'] as num).toInt(),
    );

Map<String, dynamic> _$$ChildProductImplToJson(_$ChildProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'count': instance.count,
      'is_box': instance.isBox,
    };

_$MarketplacesImpl _$$MarketplacesImplFromJson(Map<String, dynamic> json) =>
    _$MarketplacesImpl(
      yandexMarketFbs: $enumDecode(
        _$MarketplaceStatusEnumMap,
        json['YANDEX_MARKET_FBS'],
      ),
      yandexMarketFbsFast: $enumDecode(
        _$MarketplaceStatusEnumMap,
        json['YANDEX_MARKET_FBS_FAST'],
      ),
      wildberriesFbs: $enumDecode(
        _$MarketplaceStatusEnumMap,
        json['WILDBERRIES_FBS'],
      ),
      ozonFbs: $enumDecode(_$MarketplaceStatusEnumMap, json['OZON_FBS']),
      ozonRealFbsExpress: $enumDecode(
        _$MarketplaceStatusEnumMap,
        json['OZON_REAL_FBS_EXPRESS'],
      ),
      sberFbs: $enumDecode(_$MarketplaceStatusEnumMap, json['SBER_FBS']),
    );

Map<String, dynamic> _$$MarketplacesImplToJson(
  _$MarketplacesImpl instance,
) => <String, dynamic>{
  'YANDEX_MARKET_FBS': _$MarketplaceStatusEnumMap[instance.yandexMarketFbs]!,
  'YANDEX_MARKET_FBS_FAST':
      _$MarketplaceStatusEnumMap[instance.yandexMarketFbsFast]!,
  'WILDBERRIES_FBS': _$MarketplaceStatusEnumMap[instance.wildberriesFbs]!,
  'OZON_FBS': _$MarketplaceStatusEnumMap[instance.ozonFbs]!,
  'OZON_REAL_FBS_EXPRESS':
      _$MarketplaceStatusEnumMap[instance.ozonRealFbsExpress]!,
  'SBER_FBS': _$MarketplaceStatusEnumMap[instance.sberFbs]!,
};

const _$MarketplaceStatusEnumMap = {
  MarketplaceStatus.success: 'SUCCESS',
  MarketplaceStatus.lackLinkAndWithCategory: 'LACK_LINK_AND_WITH_CATEGORY',
  MarketplaceStatus.lackLink: 'LACK_LINK',
};

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      article: json['article'] as String,
      isMain: json['isMain'] as bool,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{'article': instance.article, 'isMain': instance.isMain};

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
  id: (json['id'] as num?)?.toInt(),
  file: json['file'] as String,
  isMain: json['isMain'] as bool,
);

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'isMain': instance.isMain,
    };
