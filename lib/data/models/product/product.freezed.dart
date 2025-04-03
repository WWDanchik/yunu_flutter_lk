// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryId')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get oldPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'WB_FBO')
  int? get wbFbo => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  int get reserve => throw _privateConstructorUsedError;
  int get marriage => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbo_stock')
  FboStock? get fboStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_disabled_update_stock')
  bool? get isDisabledUpdateStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculated_purchase_price')
  double? get calculatedPurchasePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fragile')
  bool get isFragile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_with_video_record')
  bool get isWithVideoRecord => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required_cis')
  bool get isRequiredCis => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction_link')
  String? get instructionLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction_text')
  String? get instructionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_box')
  bool get isBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  bool get isPackInBubbleWrap => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pack_in_cardboard')
  bool get isPackInCardboard => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fifo')
  bool get isFifo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  bool get measuredInWarehouse => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get volume => throw _privateConstructorUsedError;
  int? get comission => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  Marketplaces? get marketplaces => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_purchase_price')
  double? get foreignPurchasePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  String? get foreignPurchasePriceCurrencySymbol =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_delivery_price')
  double? get foreignDeliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  String? get foreignDeliveryPriceCurrencySymbol =>
      throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int id,
    int type,
    String article,
    @JsonKey(name: 'categoryId') int categoryId,
    @JsonKey(name: 'category_name') String categoryName,
    String name,
    double price,
    double oldPrice,
    int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    String photo,
    int reserve,
    int marriage,
    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'is_disabled_update_stock') bool? isDisabledUpdateStock,
    @JsonKey(name: 'calculated_purchase_price') double? calculatedPurchasePrice,
    @JsonKey(name: 'is_fragile') bool isFragile,
    @JsonKey(name: 'is_with_video_record') bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') bool isHidden,
    @JsonKey(name: 'is_fifo') bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    String? country,
    bool measuredInWarehouse,
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
  });

  $FboStockCopyWith<$Res>? get fboStock;
  $MarketplacesCopyWith<$Res>? get marketplaces;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? article = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? quantity = null,
    Object? wbFbo = freezed,
    Object? photo = null,
    Object? reserve = null,
    Object? marriage = null,
    Object? fboStock = freezed,
    Object? isDisabledUpdateStock = freezed,
    Object? calculatedPurchasePrice = freezed,
    Object? isFragile = null,
    Object? isWithVideoRecord = null,
    Object? isRequiredCis = null,
    Object? instructionLink = freezed,
    Object? instructionText = freezed,
    Object? isBox = null,
    Object? isPackInBubbleWrap = null,
    Object? isPackInCardboard = null,
    Object? isHidden = null,
    Object? isFifo = null,
    Object? isDimensionsDiff = null,
    Object? country = freezed,
    Object? measuredInWarehouse = null,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? volume = freezed,
    Object? comission = freezed,
    Object? weight = freezed,
    Object? marketplaces = freezed,
    Object? foreignPurchasePrice = freezed,
    Object? foreignPurchasePriceCurrencySymbol = freezed,
    Object? foreignDeliveryPrice = freezed,
    Object? foreignDeliveryPriceCurrencySymbol = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as int,
            article:
                null == article
                    ? _value.article
                    : article // ignore: cast_nullable_to_non_nullable
                        as String,
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            oldPrice:
                null == oldPrice
                    ? _value.oldPrice
                    : oldPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            wbFbo:
                freezed == wbFbo
                    ? _value.wbFbo
                    : wbFbo // ignore: cast_nullable_to_non_nullable
                        as int?,
            photo:
                null == photo
                    ? _value.photo
                    : photo // ignore: cast_nullable_to_non_nullable
                        as String,
            reserve:
                null == reserve
                    ? _value.reserve
                    : reserve // ignore: cast_nullable_to_non_nullable
                        as int,
            marriage:
                null == marriage
                    ? _value.marriage
                    : marriage // ignore: cast_nullable_to_non_nullable
                        as int,
            fboStock:
                freezed == fboStock
                    ? _value.fboStock
                    : fboStock // ignore: cast_nullable_to_non_nullable
                        as FboStock?,
            isDisabledUpdateStock:
                freezed == isDisabledUpdateStock
                    ? _value.isDisabledUpdateStock
                    : isDisabledUpdateStock // ignore: cast_nullable_to_non_nullable
                        as bool?,
            calculatedPurchasePrice:
                freezed == calculatedPurchasePrice
                    ? _value.calculatedPurchasePrice
                    : calculatedPurchasePrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            isFragile:
                null == isFragile
                    ? _value.isFragile
                    : isFragile // ignore: cast_nullable_to_non_nullable
                        as bool,
            isWithVideoRecord:
                null == isWithVideoRecord
                    ? _value.isWithVideoRecord
                    : isWithVideoRecord // ignore: cast_nullable_to_non_nullable
                        as bool,
            isRequiredCis:
                null == isRequiredCis
                    ? _value.isRequiredCis
                    : isRequiredCis // ignore: cast_nullable_to_non_nullable
                        as bool,
            instructionLink:
                freezed == instructionLink
                    ? _value.instructionLink
                    : instructionLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            instructionText:
                freezed == instructionText
                    ? _value.instructionText
                    : instructionText // ignore: cast_nullable_to_non_nullable
                        as String?,
            isBox:
                null == isBox
                    ? _value.isBox
                    : isBox // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPackInBubbleWrap:
                null == isPackInBubbleWrap
                    ? _value.isPackInBubbleWrap
                    : isPackInBubbleWrap // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPackInCardboard:
                null == isPackInCardboard
                    ? _value.isPackInCardboard
                    : isPackInCardboard // ignore: cast_nullable_to_non_nullable
                        as bool,
            isHidden:
                null == isHidden
                    ? _value.isHidden
                    : isHidden // ignore: cast_nullable_to_non_nullable
                        as bool,
            isFifo:
                null == isFifo
                    ? _value.isFifo
                    : isFifo // ignore: cast_nullable_to_non_nullable
                        as bool,
            isDimensionsDiff:
                null == isDimensionsDiff
                    ? _value.isDimensionsDiff
                    : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                        as bool,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            measuredInWarehouse:
                null == measuredInWarehouse
                    ? _value.measuredInWarehouse
                    : measuredInWarehouse // ignore: cast_nullable_to_non_nullable
                        as bool,
            height:
                freezed == height
                    ? _value.height
                    : height // ignore: cast_nullable_to_non_nullable
                        as double?,
            width:
                freezed == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as double?,
            length:
                freezed == length
                    ? _value.length
                    : length // ignore: cast_nullable_to_non_nullable
                        as double?,
            volume:
                freezed == volume
                    ? _value.volume
                    : volume // ignore: cast_nullable_to_non_nullable
                        as double?,
            comission:
                freezed == comission
                    ? _value.comission
                    : comission // ignore: cast_nullable_to_non_nullable
                        as int?,
            weight:
                freezed == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as double?,
            marketplaces:
                freezed == marketplaces
                    ? _value.marketplaces
                    : marketplaces // ignore: cast_nullable_to_non_nullable
                        as Marketplaces?,
            foreignPurchasePrice:
                freezed == foreignPurchasePrice
                    ? _value.foreignPurchasePrice
                    : foreignPurchasePrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            foreignPurchasePriceCurrencySymbol:
                freezed == foreignPurchasePriceCurrencySymbol
                    ? _value.foreignPurchasePriceCurrencySymbol
                    : foreignPurchasePriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                        as String?,
            foreignDeliveryPrice:
                freezed == foreignDeliveryPrice
                    ? _value.foreignDeliveryPrice
                    : foreignDeliveryPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            foreignDeliveryPriceCurrencySymbol:
                freezed == foreignDeliveryPriceCurrencySymbol
                    ? _value.foreignDeliveryPriceCurrencySymbol
                    : foreignDeliveryPriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FboStockCopyWith<$Res>? get fboStock {
    if (_value.fboStock == null) {
      return null;
    }

    return $FboStockCopyWith<$Res>(_value.fboStock!, (value) {
      return _then(_value.copyWith(fboStock: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketplacesCopyWith<$Res>? get marketplaces {
    if (_value.marketplaces == null) {
      return null;
    }

    return $MarketplacesCopyWith<$Res>(_value.marketplaces!, (value) {
      return _then(_value.copyWith(marketplaces: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int type,
    String article,
    @JsonKey(name: 'categoryId') int categoryId,
    @JsonKey(name: 'category_name') String categoryName,
    String name,
    double price,
    double oldPrice,
    int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    String photo,
    int reserve,
    int marriage,
    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'is_disabled_update_stock') bool? isDisabledUpdateStock,
    @JsonKey(name: 'calculated_purchase_price') double? calculatedPurchasePrice,
    @JsonKey(name: 'is_fragile') bool isFragile,
    @JsonKey(name: 'is_with_video_record') bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') bool isHidden,
    @JsonKey(name: 'is_fifo') bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    String? country,
    bool measuredInWarehouse,
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
  });

  @override
  $FboStockCopyWith<$Res>? get fboStock;
  @override
  $MarketplacesCopyWith<$Res>? get marketplaces;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? article = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? quantity = null,
    Object? wbFbo = freezed,
    Object? photo = null,
    Object? reserve = null,
    Object? marriage = null,
    Object? fboStock = freezed,
    Object? isDisabledUpdateStock = freezed,
    Object? calculatedPurchasePrice = freezed,
    Object? isFragile = null,
    Object? isWithVideoRecord = null,
    Object? isRequiredCis = null,
    Object? instructionLink = freezed,
    Object? instructionText = freezed,
    Object? isBox = null,
    Object? isPackInBubbleWrap = null,
    Object? isPackInCardboard = null,
    Object? isHidden = null,
    Object? isFifo = null,
    Object? isDimensionsDiff = null,
    Object? country = freezed,
    Object? measuredInWarehouse = null,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? volume = freezed,
    Object? comission = freezed,
    Object? weight = freezed,
    Object? marketplaces = freezed,
    Object? foreignPurchasePrice = freezed,
    Object? foreignPurchasePriceCurrencySymbol = freezed,
    Object? foreignDeliveryPrice = freezed,
    Object? foreignDeliveryPriceCurrencySymbol = freezed,
  }) {
    return _then(
      _$ProductImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as int,
        article:
            null == article
                ? _value.article
                : article // ignore: cast_nullable_to_non_nullable
                    as String,
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        oldPrice:
            null == oldPrice
                ? _value.oldPrice
                : oldPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        wbFbo:
            freezed == wbFbo
                ? _value.wbFbo
                : wbFbo // ignore: cast_nullable_to_non_nullable
                    as int?,
        photo:
            null == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                    as String,
        reserve:
            null == reserve
                ? _value.reserve
                : reserve // ignore: cast_nullable_to_non_nullable
                    as int,
        marriage:
            null == marriage
                ? _value.marriage
                : marriage // ignore: cast_nullable_to_non_nullable
                    as int,
        fboStock:
            freezed == fboStock
                ? _value.fboStock
                : fboStock // ignore: cast_nullable_to_non_nullable
                    as FboStock?,
        isDisabledUpdateStock:
            freezed == isDisabledUpdateStock
                ? _value.isDisabledUpdateStock
                : isDisabledUpdateStock // ignore: cast_nullable_to_non_nullable
                    as bool?,
        calculatedPurchasePrice:
            freezed == calculatedPurchasePrice
                ? _value.calculatedPurchasePrice
                : calculatedPurchasePrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        isFragile:
            null == isFragile
                ? _value.isFragile
                : isFragile // ignore: cast_nullable_to_non_nullable
                    as bool,
        isWithVideoRecord:
            null == isWithVideoRecord
                ? _value.isWithVideoRecord
                : isWithVideoRecord // ignore: cast_nullable_to_non_nullable
                    as bool,
        isRequiredCis:
            null == isRequiredCis
                ? _value.isRequiredCis
                : isRequiredCis // ignore: cast_nullable_to_non_nullable
                    as bool,
        instructionLink:
            freezed == instructionLink
                ? _value.instructionLink
                : instructionLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        instructionText:
            freezed == instructionText
                ? _value.instructionText
                : instructionText // ignore: cast_nullable_to_non_nullable
                    as String?,
        isBox:
            null == isBox
                ? _value.isBox
                : isBox // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPackInBubbleWrap:
            null == isPackInBubbleWrap
                ? _value.isPackInBubbleWrap
                : isPackInBubbleWrap // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPackInCardboard:
            null == isPackInCardboard
                ? _value.isPackInCardboard
                : isPackInCardboard // ignore: cast_nullable_to_non_nullable
                    as bool,
        isHidden:
            null == isHidden
                ? _value.isHidden
                : isHidden // ignore: cast_nullable_to_non_nullable
                    as bool,
        isFifo:
            null == isFifo
                ? _value.isFifo
                : isFifo // ignore: cast_nullable_to_non_nullable
                    as bool,
        isDimensionsDiff:
            null == isDimensionsDiff
                ? _value.isDimensionsDiff
                : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                    as bool,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        measuredInWarehouse:
            null == measuredInWarehouse
                ? _value.measuredInWarehouse
                : measuredInWarehouse // ignore: cast_nullable_to_non_nullable
                    as bool,
        height:
            freezed == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                    as double?,
        width:
            freezed == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as double?,
        length:
            freezed == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                    as double?,
        volume:
            freezed == volume
                ? _value.volume
                : volume // ignore: cast_nullable_to_non_nullable
                    as double?,
        comission:
            freezed == comission
                ? _value.comission
                : comission // ignore: cast_nullable_to_non_nullable
                    as int?,
        weight:
            freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as double?,
        marketplaces:
            freezed == marketplaces
                ? _value.marketplaces
                : marketplaces // ignore: cast_nullable_to_non_nullable
                    as Marketplaces?,
        foreignPurchasePrice:
            freezed == foreignPurchasePrice
                ? _value.foreignPurchasePrice
                : foreignPurchasePrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        foreignPurchasePriceCurrencySymbol:
            freezed == foreignPurchasePriceCurrencySymbol
                ? _value.foreignPurchasePriceCurrencySymbol
                : foreignPurchasePriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                    as String?,
        foreignDeliveryPrice:
            freezed == foreignDeliveryPrice
                ? _value.foreignDeliveryPrice
                : foreignDeliveryPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        foreignDeliveryPriceCurrencySymbol:
            freezed == foreignDeliveryPriceCurrencySymbol
                ? _value.foreignDeliveryPriceCurrencySymbol
                : foreignDeliveryPriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.type,
    required this.article,
    @JsonKey(name: 'categoryId') required this.categoryId,
    @JsonKey(name: 'category_name') required this.categoryName,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.quantity,
    @JsonKey(name: 'WB_FBO') this.wbFbo,
    required this.photo,
    required this.reserve,
    required this.marriage,
    @JsonKey(name: 'fbo_stock') this.fboStock,
    @JsonKey(name: 'is_disabled_update_stock') this.isDisabledUpdateStock,
    @JsonKey(name: 'calculated_purchase_price') this.calculatedPurchasePrice,
    @JsonKey(name: 'is_fragile') required this.isFragile,
    @JsonKey(name: 'is_with_video_record') required this.isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required this.isRequiredCis,
    @JsonKey(name: 'instruction_link') this.instructionLink,
    @JsonKey(name: 'instruction_text') this.instructionText,
    @JsonKey(name: 'is_box') required this.isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') required this.isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') required this.isPackInCardboard,
    @JsonKey(name: 'is_hidden') required this.isHidden,
    @JsonKey(name: 'is_fifo') required this.isFifo,
    @JsonKey(name: 'is_dimensions_diff') required this.isDimensionsDiff,
    this.country,
    required this.measuredInWarehouse,
    this.height,
    this.width,
    this.length,
    this.volume,
    this.comission,
    this.weight,
    this.marketplaces,
    @JsonKey(name: 'foreign_purchase_price') this.foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    this.foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') this.foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    this.foreignDeliveryPriceCurrencySymbol,
  });

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final int type;
  @override
  final String article;
  @override
  @JsonKey(name: 'categoryId')
  final int categoryId;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  final String name;
  @override
  final double price;
  @override
  final double oldPrice;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'WB_FBO')
  final int? wbFbo;
  @override
  final String photo;
  @override
  final int reserve;
  @override
  final int marriage;
  @override
  @JsonKey(name: 'fbo_stock')
  final FboStock? fboStock;
  @override
  @JsonKey(name: 'is_disabled_update_stock')
  final bool? isDisabledUpdateStock;
  @override
  @JsonKey(name: 'calculated_purchase_price')
  final double? calculatedPurchasePrice;
  @override
  @JsonKey(name: 'is_fragile')
  final bool isFragile;
  @override
  @JsonKey(name: 'is_with_video_record')
  final bool isWithVideoRecord;
  @override
  @JsonKey(name: 'is_required_cis')
  final bool isRequiredCis;
  @override
  @JsonKey(name: 'instruction_link')
  final String? instructionLink;
  @override
  @JsonKey(name: 'instruction_text')
  final String? instructionText;
  @override
  @JsonKey(name: 'is_box')
  final bool isBox;
  @override
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  final bool isPackInBubbleWrap;
  @override
  @JsonKey(name: 'is_pack_in_cardboard')
  final bool isPackInCardboard;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  @JsonKey(name: 'is_fifo')
  final bool isFifo;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  final bool isDimensionsDiff;
  @override
  final String? country;
  @override
  final bool measuredInWarehouse;
  @override
  final double? height;
  @override
  final double? width;
  @override
  final double? length;
  @override
  final double? volume;
  @override
  final int? comission;
  @override
  final double? weight;
  @override
  final Marketplaces? marketplaces;
  @override
  @JsonKey(name: 'foreign_purchase_price')
  final double? foreignPurchasePrice;
  @override
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  final String? foreignPurchasePriceCurrencySymbol;
  @override
  @JsonKey(name: 'foreign_delivery_price')
  final double? foreignDeliveryPrice;
  @override
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  final String? foreignDeliveryPriceCurrencySymbol;

  @override
  String toString() {
    return 'Product(id: $id, type: $type, article: $article, categoryId: $categoryId, categoryName: $categoryName, name: $name, price: $price, oldPrice: $oldPrice, quantity: $quantity, wbFbo: $wbFbo, photo: $photo, reserve: $reserve, marriage: $marriage, fboStock: $fboStock, isDisabledUpdateStock: $isDisabledUpdateStock, calculatedPurchasePrice: $calculatedPurchasePrice, isFragile: $isFragile, isWithVideoRecord: $isWithVideoRecord, isRequiredCis: $isRequiredCis, instructionLink: $instructionLink, instructionText: $instructionText, isBox: $isBox, isPackInBubbleWrap: $isPackInBubbleWrap, isPackInCardboard: $isPackInCardboard, isHidden: $isHidden, isFifo: $isFifo, isDimensionsDiff: $isDimensionsDiff, country: $country, measuredInWarehouse: $measuredInWarehouse, height: $height, width: $width, length: $length, volume: $volume, comission: $comission, weight: $weight, marketplaces: $marketplaces, foreignPurchasePrice: $foreignPurchasePrice, foreignPurchasePriceCurrencySymbol: $foreignPurchasePriceCurrencySymbol, foreignDeliveryPrice: $foreignDeliveryPrice, foreignDeliveryPriceCurrencySymbol: $foreignDeliveryPriceCurrencySymbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.wbFbo, wbFbo) || other.wbFbo == wbFbo) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.reserve, reserve) || other.reserve == reserve) &&
            (identical(other.marriage, marriage) ||
                other.marriage == marriage) &&
            (identical(other.fboStock, fboStock) ||
                other.fboStock == fboStock) &&
            (identical(other.isDisabledUpdateStock, isDisabledUpdateStock) ||
                other.isDisabledUpdateStock == isDisabledUpdateStock) &&
            (identical(
                  other.calculatedPurchasePrice,
                  calculatedPurchasePrice,
                ) ||
                other.calculatedPurchasePrice == calculatedPurchasePrice) &&
            (identical(other.isFragile, isFragile) ||
                other.isFragile == isFragile) &&
            (identical(other.isWithVideoRecord, isWithVideoRecord) ||
                other.isWithVideoRecord == isWithVideoRecord) &&
            (identical(other.isRequiredCis, isRequiredCis) ||
                other.isRequiredCis == isRequiredCis) &&
            (identical(other.instructionLink, instructionLink) ||
                other.instructionLink == instructionLink) &&
            (identical(other.instructionText, instructionText) ||
                other.instructionText == instructionText) &&
            (identical(other.isBox, isBox) || other.isBox == isBox) &&
            (identical(other.isPackInBubbleWrap, isPackInBubbleWrap) ||
                other.isPackInBubbleWrap == isPackInBubbleWrap) &&
            (identical(other.isPackInCardboard, isPackInCardboard) ||
                other.isPackInCardboard == isPackInCardboard) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isFifo, isFifo) || other.isFifo == isFifo) &&
            (identical(other.isDimensionsDiff, isDimensionsDiff) ||
                other.isDimensionsDiff == isDimensionsDiff) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.measuredInWarehouse, measuredInWarehouse) ||
                other.measuredInWarehouse == measuredInWarehouse) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.comission, comission) ||
                other.comission == comission) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.marketplaces, marketplaces) ||
                other.marketplaces == marketplaces) &&
            (identical(other.foreignPurchasePrice, foreignPurchasePrice) ||
                other.foreignPurchasePrice == foreignPurchasePrice) &&
            (identical(
                  other.foreignPurchasePriceCurrencySymbol,
                  foreignPurchasePriceCurrencySymbol,
                ) ||
                other.foreignPurchasePriceCurrencySymbol ==
                    foreignPurchasePriceCurrencySymbol) &&
            (identical(other.foreignDeliveryPrice, foreignDeliveryPrice) ||
                other.foreignDeliveryPrice == foreignDeliveryPrice) &&
            (identical(
                  other.foreignDeliveryPriceCurrencySymbol,
                  foreignDeliveryPriceCurrencySymbol,
                ) ||
                other.foreignDeliveryPriceCurrencySymbol ==
                    foreignDeliveryPriceCurrencySymbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    type,
    article,
    categoryId,
    categoryName,
    name,
    price,
    oldPrice,
    quantity,
    wbFbo,
    photo,
    reserve,
    marriage,
    fboStock,
    isDisabledUpdateStock,
    calculatedPurchasePrice,
    isFragile,
    isWithVideoRecord,
    isRequiredCis,
    instructionLink,
    instructionText,
    isBox,
    isPackInBubbleWrap,
    isPackInCardboard,
    isHidden,
    isFifo,
    isDimensionsDiff,
    country,
    measuredInWarehouse,
    height,
    width,
    length,
    volume,
    comission,
    weight,
    marketplaces,
    foreignPurchasePrice,
    foreignPurchasePriceCurrencySymbol,
    foreignDeliveryPrice,
    foreignDeliveryPriceCurrencySymbol,
  ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({
    required final int id,
    required final int type,
    required final String article,
    @JsonKey(name: 'categoryId') required final int categoryId,
    @JsonKey(name: 'category_name') required final String categoryName,
    required final String name,
    required final double price,
    required final double oldPrice,
    required final int quantity,
    @JsonKey(name: 'WB_FBO') final int? wbFbo,
    required final String photo,
    required final int reserve,
    required final int marriage,
    @JsonKey(name: 'fbo_stock') final FboStock? fboStock,
    @JsonKey(name: 'is_disabled_update_stock')
    final bool? isDisabledUpdateStock,
    @JsonKey(name: 'calculated_purchase_price')
    final double? calculatedPurchasePrice,
    @JsonKey(name: 'is_fragile') required final bool isFragile,
    @JsonKey(name: 'is_with_video_record')
    required final bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required final bool isRequiredCis,
    @JsonKey(name: 'instruction_link') final String? instructionLink,
    @JsonKey(name: 'instruction_text') final String? instructionText,
    @JsonKey(name: 'is_box') required final bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap')
    required final bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard')
    required final bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') required final bool isHidden,
    @JsonKey(name: 'is_fifo') required final bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') required final bool isDimensionsDiff,
    final String? country,
    required final bool measuredInWarehouse,
    final double? height,
    final double? width,
    final double? length,
    final double? volume,
    final int? comission,
    final double? weight,
    final Marketplaces? marketplaces,
    @JsonKey(name: 'foreign_purchase_price') final double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    final String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') final double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    final String? foreignDeliveryPriceCurrencySymbol,
  }) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  int get type;
  @override
  String get article;
  @override
  @JsonKey(name: 'categoryId')
  int get categoryId;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  String get name;
  @override
  double get price;
  @override
  double get oldPrice;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'WB_FBO')
  int? get wbFbo;
  @override
  String get photo;
  @override
  int get reserve;
  @override
  int get marriage;
  @override
  @JsonKey(name: 'fbo_stock')
  FboStock? get fboStock;
  @override
  @JsonKey(name: 'is_disabled_update_stock')
  bool? get isDisabledUpdateStock;
  @override
  @JsonKey(name: 'calculated_purchase_price')
  double? get calculatedPurchasePrice;
  @override
  @JsonKey(name: 'is_fragile')
  bool get isFragile;
  @override
  @JsonKey(name: 'is_with_video_record')
  bool get isWithVideoRecord;
  @override
  @JsonKey(name: 'is_required_cis')
  bool get isRequiredCis;
  @override
  @JsonKey(name: 'instruction_link')
  String? get instructionLink;
  @override
  @JsonKey(name: 'instruction_text')
  String? get instructionText;
  @override
  @JsonKey(name: 'is_box')
  bool get isBox;
  @override
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  bool get isPackInBubbleWrap;
  @override
  @JsonKey(name: 'is_pack_in_cardboard')
  bool get isPackInCardboard;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  @JsonKey(name: 'is_fifo')
  bool get isFifo;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff;
  @override
  String? get country;
  @override
  bool get measuredInWarehouse;
  @override
  double? get height;
  @override
  double? get width;
  @override
  double? get length;
  @override
  double? get volume;
  @override
  int? get comission;
  @override
  double? get weight;
  @override
  Marketplaces? get marketplaces;
  @override
  @JsonKey(name: 'foreign_purchase_price')
  double? get foreignPurchasePrice;
  @override
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  String? get foreignPurchasePriceCurrencySymbol;
  @override
  @JsonKey(name: 'foreign_delivery_price')
  double? get foreignDeliveryPrice;
  @override
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  String? get foreignDeliveryPriceCurrencySymbol;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FboStock _$FboStockFromJson(Map<String, dynamic> json) {
  return _FboStock.fromJson(json);
}

/// @nodoc
mixin _$FboStock {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'by_delivery_type')
  List<dynamic> get byDeliveryType => throw _privateConstructorUsedError;

  /// Serializes this FboStock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FboStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FboStockCopyWith<FboStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FboStockCopyWith<$Res> {
  factory $FboStockCopyWith(FboStock value, $Res Function(FboStock) then) =
      _$FboStockCopyWithImpl<$Res, FboStock>;
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'by_delivery_type') List<dynamic> byDeliveryType,
  });
}

/// @nodoc
class _$FboStockCopyWithImpl<$Res, $Val extends FboStock>
    implements $FboStockCopyWith<$Res> {
  _$FboStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FboStock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? byDeliveryType = null}) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            byDeliveryType:
                null == byDeliveryType
                    ? _value.byDeliveryType
                    : byDeliveryType // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FboStockImplCopyWith<$Res>
    implements $FboStockCopyWith<$Res> {
  factory _$$FboStockImplCopyWith(
    _$FboStockImpl value,
    $Res Function(_$FboStockImpl) then,
  ) = __$$FboStockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'by_delivery_type') List<dynamic> byDeliveryType,
  });
}

/// @nodoc
class __$$FboStockImplCopyWithImpl<$Res>
    extends _$FboStockCopyWithImpl<$Res, _$FboStockImpl>
    implements _$$FboStockImplCopyWith<$Res> {
  __$$FboStockImplCopyWithImpl(
    _$FboStockImpl _value,
    $Res Function(_$FboStockImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FboStock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? byDeliveryType = null}) {
    return _then(
      _$FboStockImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        byDeliveryType:
            null == byDeliveryType
                ? _value._byDeliveryType
                : byDeliveryType // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FboStockImpl implements _FboStock {
  const _$FboStockImpl({
    required this.total,
    @JsonKey(name: 'by_delivery_type')
    required final List<dynamic> byDeliveryType,
  }) : _byDeliveryType = byDeliveryType;

  factory _$FboStockImpl.fromJson(Map<String, dynamic> json) =>
      _$$FboStockImplFromJson(json);

  @override
  final int total;
  final List<dynamic> _byDeliveryType;
  @override
  @JsonKey(name: 'by_delivery_type')
  List<dynamic> get byDeliveryType {
    if (_byDeliveryType is EqualUnmodifiableListView) return _byDeliveryType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byDeliveryType);
  }

  @override
  String toString() {
    return 'FboStock(total: $total, byDeliveryType: $byDeliveryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FboStockImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(
              other._byDeliveryType,
              _byDeliveryType,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    const DeepCollectionEquality().hash(_byDeliveryType),
  );

  /// Create a copy of FboStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FboStockImplCopyWith<_$FboStockImpl> get copyWith =>
      __$$FboStockImplCopyWithImpl<_$FboStockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FboStockImplToJson(this);
  }
}

abstract class _FboStock implements FboStock {
  const factory _FboStock({
    required final int total,
    @JsonKey(name: 'by_delivery_type')
    required final List<dynamic> byDeliveryType,
  }) = _$FboStockImpl;

  factory _FboStock.fromJson(Map<String, dynamic> json) =
      _$FboStockImpl.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'by_delivery_type')
  List<dynamic> get byDeliveryType;

  /// Create a copy of FboStock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FboStockImplCopyWith<_$FboStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  int get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String get categoryName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get oldPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'WB_FBO')
  int? get wbFbo => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbo_stock')
  FboStock? get fboStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'fbo_stocks')
  FboStock? get fboStocks => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  int get reserve => throw _privateConstructorUsedError;
  int get marriage => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fragile')
  bool get isFragile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_with_video_record')
  bool get isWithVideoRecord => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required_cis')
  bool get isRequiredCis => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction_link')
  String? get instructionLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'instruction_text')
  String? get instructionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_box')
  bool get isBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  bool get isPackInBubbleWrap => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pack_in_cardboard')
  bool get isPackInCardboard => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fifo')
  bool get isFifo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  bool get measuredInWarehouse => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get volume => throw _privateConstructorUsedError;
  int? get comission => throw _privateConstructorUsedError;
  Marketplaces get marketplaces => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_purchase_price')
  double? get foreignPurchasePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  String? get foreignPurchasePriceCurrencySymbol =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_delivery_price')
  double? get foreignDeliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  String? get foreignDeliveryPriceCurrencySymbol =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String> get barcodes => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  bool get canBeRemoved => throw _privateConstructorUsedError;
  @JsonKey(name: "child_products")
  List<ChildProduct>? get childProducts => throw _privateConstructorUsedError;

  /// Serializes this ProductDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
    ProductDetail value,
    $Res Function(ProductDetail) then,
  ) = _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call({
    int id,
    int type,
    String article,
    int? categoryId,
    @JsonKey(name: "category_name") String categoryName,
    String name,
    double price,
    double oldPrice,
    int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'fbo_stocks') FboStock? fboStocks,
    String photo,
    int reserve,
    int marriage,
    @JsonKey(name: 'is_fragile') bool isFragile,
    @JsonKey(name: 'is_with_video_record') bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') bool isHidden,
    @JsonKey(name: 'is_fifo') bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    String? country,
    double? weight,
    bool measuredInWarehouse,
    double? height,
    double? width,
    double? length,
    double? volume,
    int? comission,
    Marketplaces marketplaces,
    @JsonKey(name: 'foreign_purchase_price') double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    String? foreignDeliveryPriceCurrencySymbol,
    String? description,
    List<String> barcodes,
    List<Article> articles,
    String? manufacturer,
    List<Photo> photos,
    bool canBeRemoved,
    @JsonKey(name: "child_products") List<ChildProduct>? childProducts,
  });

  $FboStockCopyWith<$Res>? get fboStock;
  $FboStockCopyWith<$Res>? get fboStocks;
  $MarketplacesCopyWith<$Res> get marketplaces;
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? article = null,
    Object? categoryId = freezed,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? quantity = null,
    Object? wbFbo = freezed,
    Object? fboStock = freezed,
    Object? fboStocks = freezed,
    Object? photo = null,
    Object? reserve = null,
    Object? marriage = null,
    Object? isFragile = null,
    Object? isWithVideoRecord = null,
    Object? isRequiredCis = null,
    Object? instructionLink = freezed,
    Object? instructionText = freezed,
    Object? isBox = null,
    Object? isPackInBubbleWrap = null,
    Object? isPackInCardboard = null,
    Object? isHidden = null,
    Object? isFifo = null,
    Object? isDimensionsDiff = null,
    Object? country = freezed,
    Object? weight = freezed,
    Object? measuredInWarehouse = null,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? volume = freezed,
    Object? comission = freezed,
    Object? marketplaces = null,
    Object? foreignPurchasePrice = freezed,
    Object? foreignPurchasePriceCurrencySymbol = freezed,
    Object? foreignDeliveryPrice = freezed,
    Object? foreignDeliveryPriceCurrencySymbol = freezed,
    Object? description = freezed,
    Object? barcodes = null,
    Object? articles = null,
    Object? manufacturer = freezed,
    Object? photos = null,
    Object? canBeRemoved = null,
    Object? childProducts = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as int,
            article:
                null == article
                    ? _value.article
                    : article // ignore: cast_nullable_to_non_nullable
                        as String,
            categoryId:
                freezed == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int?,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            oldPrice:
                null == oldPrice
                    ? _value.oldPrice
                    : oldPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            wbFbo:
                freezed == wbFbo
                    ? _value.wbFbo
                    : wbFbo // ignore: cast_nullable_to_non_nullable
                        as int?,
            fboStock:
                freezed == fboStock
                    ? _value.fboStock
                    : fboStock // ignore: cast_nullable_to_non_nullable
                        as FboStock?,
            fboStocks:
                freezed == fboStocks
                    ? _value.fboStocks
                    : fboStocks // ignore: cast_nullable_to_non_nullable
                        as FboStock?,
            photo:
                null == photo
                    ? _value.photo
                    : photo // ignore: cast_nullable_to_non_nullable
                        as String,
            reserve:
                null == reserve
                    ? _value.reserve
                    : reserve // ignore: cast_nullable_to_non_nullable
                        as int,
            marriage:
                null == marriage
                    ? _value.marriage
                    : marriage // ignore: cast_nullable_to_non_nullable
                        as int,
            isFragile:
                null == isFragile
                    ? _value.isFragile
                    : isFragile // ignore: cast_nullable_to_non_nullable
                        as bool,
            isWithVideoRecord:
                null == isWithVideoRecord
                    ? _value.isWithVideoRecord
                    : isWithVideoRecord // ignore: cast_nullable_to_non_nullable
                        as bool,
            isRequiredCis:
                null == isRequiredCis
                    ? _value.isRequiredCis
                    : isRequiredCis // ignore: cast_nullable_to_non_nullable
                        as bool,
            instructionLink:
                freezed == instructionLink
                    ? _value.instructionLink
                    : instructionLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            instructionText:
                freezed == instructionText
                    ? _value.instructionText
                    : instructionText // ignore: cast_nullable_to_non_nullable
                        as String?,
            isBox:
                null == isBox
                    ? _value.isBox
                    : isBox // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPackInBubbleWrap:
                null == isPackInBubbleWrap
                    ? _value.isPackInBubbleWrap
                    : isPackInBubbleWrap // ignore: cast_nullable_to_non_nullable
                        as bool,
            isPackInCardboard:
                null == isPackInCardboard
                    ? _value.isPackInCardboard
                    : isPackInCardboard // ignore: cast_nullable_to_non_nullable
                        as bool,
            isHidden:
                null == isHidden
                    ? _value.isHidden
                    : isHidden // ignore: cast_nullable_to_non_nullable
                        as bool,
            isFifo:
                null == isFifo
                    ? _value.isFifo
                    : isFifo // ignore: cast_nullable_to_non_nullable
                        as bool,
            isDimensionsDiff:
                null == isDimensionsDiff
                    ? _value.isDimensionsDiff
                    : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                        as bool,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            weight:
                freezed == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as double?,
            measuredInWarehouse:
                null == measuredInWarehouse
                    ? _value.measuredInWarehouse
                    : measuredInWarehouse // ignore: cast_nullable_to_non_nullable
                        as bool,
            height:
                freezed == height
                    ? _value.height
                    : height // ignore: cast_nullable_to_non_nullable
                        as double?,
            width:
                freezed == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as double?,
            length:
                freezed == length
                    ? _value.length
                    : length // ignore: cast_nullable_to_non_nullable
                        as double?,
            volume:
                freezed == volume
                    ? _value.volume
                    : volume // ignore: cast_nullable_to_non_nullable
                        as double?,
            comission:
                freezed == comission
                    ? _value.comission
                    : comission // ignore: cast_nullable_to_non_nullable
                        as int?,
            marketplaces:
                null == marketplaces
                    ? _value.marketplaces
                    : marketplaces // ignore: cast_nullable_to_non_nullable
                        as Marketplaces,
            foreignPurchasePrice:
                freezed == foreignPurchasePrice
                    ? _value.foreignPurchasePrice
                    : foreignPurchasePrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            foreignPurchasePriceCurrencySymbol:
                freezed == foreignPurchasePriceCurrencySymbol
                    ? _value.foreignPurchasePriceCurrencySymbol
                    : foreignPurchasePriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                        as String?,
            foreignDeliveryPrice:
                freezed == foreignDeliveryPrice
                    ? _value.foreignDeliveryPrice
                    : foreignDeliveryPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            foreignDeliveryPriceCurrencySymbol:
                freezed == foreignDeliveryPriceCurrencySymbol
                    ? _value.foreignDeliveryPriceCurrencySymbol
                    : foreignDeliveryPriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            barcodes:
                null == barcodes
                    ? _value.barcodes
                    : barcodes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            articles:
                null == articles
                    ? _value.articles
                    : articles // ignore: cast_nullable_to_non_nullable
                        as List<Article>,
            manufacturer:
                freezed == manufacturer
                    ? _value.manufacturer
                    : manufacturer // ignore: cast_nullable_to_non_nullable
                        as String?,
            photos:
                null == photos
                    ? _value.photos
                    : photos // ignore: cast_nullable_to_non_nullable
                        as List<Photo>,
            canBeRemoved:
                null == canBeRemoved
                    ? _value.canBeRemoved
                    : canBeRemoved // ignore: cast_nullable_to_non_nullable
                        as bool,
            childProducts:
                freezed == childProducts
                    ? _value.childProducts
                    : childProducts // ignore: cast_nullable_to_non_nullable
                        as List<ChildProduct>?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FboStockCopyWith<$Res>? get fboStock {
    if (_value.fboStock == null) {
      return null;
    }

    return $FboStockCopyWith<$Res>(_value.fboStock!, (value) {
      return _then(_value.copyWith(fboStock: value) as $Val);
    });
  }

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FboStockCopyWith<$Res>? get fboStocks {
    if (_value.fboStocks == null) {
      return null;
    }

    return $FboStockCopyWith<$Res>(_value.fboStocks!, (value) {
      return _then(_value.copyWith(fboStocks: value) as $Val);
    });
  }

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketplacesCopyWith<$Res> get marketplaces {
    return $MarketplacesCopyWith<$Res>(_value.marketplaces, (value) {
      return _then(_value.copyWith(marketplaces: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
    _$ProductDetailImpl value,
    $Res Function(_$ProductDetailImpl) then,
  ) = __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int type,
    String article,
    int? categoryId,
    @JsonKey(name: "category_name") String categoryName,
    String name,
    double price,
    double oldPrice,
    int quantity,
    @JsonKey(name: 'WB_FBO') int? wbFbo,
    @JsonKey(name: 'fbo_stock') FboStock? fboStock,
    @JsonKey(name: 'fbo_stocks') FboStock? fboStocks,
    String photo,
    int reserve,
    int marriage,
    @JsonKey(name: 'is_fragile') bool isFragile,
    @JsonKey(name: 'is_with_video_record') bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') bool isRequiredCis,
    @JsonKey(name: 'instruction_link') String? instructionLink,
    @JsonKey(name: 'instruction_text') String? instructionText,
    @JsonKey(name: 'is_box') bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') bool isHidden,
    @JsonKey(name: 'is_fifo') bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    String? country,
    double? weight,
    bool measuredInWarehouse,
    double? height,
    double? width,
    double? length,
    double? volume,
    int? comission,
    Marketplaces marketplaces,
    @JsonKey(name: 'foreign_purchase_price') double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    String? foreignDeliveryPriceCurrencySymbol,
    String? description,
    List<String> barcodes,
    List<Article> articles,
    String? manufacturer,
    List<Photo> photos,
    bool canBeRemoved,
    @JsonKey(name: "child_products") List<ChildProduct>? childProducts,
  });

  @override
  $FboStockCopyWith<$Res>? get fboStock;
  @override
  $FboStockCopyWith<$Res>? get fboStocks;
  @override
  $MarketplacesCopyWith<$Res> get marketplaces;
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
    _$ProductDetailImpl _value,
    $Res Function(_$ProductDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? article = null,
    Object? categoryId = freezed,
    Object? categoryName = null,
    Object? name = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? quantity = null,
    Object? wbFbo = freezed,
    Object? fboStock = freezed,
    Object? fboStocks = freezed,
    Object? photo = null,
    Object? reserve = null,
    Object? marriage = null,
    Object? isFragile = null,
    Object? isWithVideoRecord = null,
    Object? isRequiredCis = null,
    Object? instructionLink = freezed,
    Object? instructionText = freezed,
    Object? isBox = null,
    Object? isPackInBubbleWrap = null,
    Object? isPackInCardboard = null,
    Object? isHidden = null,
    Object? isFifo = null,
    Object? isDimensionsDiff = null,
    Object? country = freezed,
    Object? weight = freezed,
    Object? measuredInWarehouse = null,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? volume = freezed,
    Object? comission = freezed,
    Object? marketplaces = null,
    Object? foreignPurchasePrice = freezed,
    Object? foreignPurchasePriceCurrencySymbol = freezed,
    Object? foreignDeliveryPrice = freezed,
    Object? foreignDeliveryPriceCurrencySymbol = freezed,
    Object? description = freezed,
    Object? barcodes = null,
    Object? articles = null,
    Object? manufacturer = freezed,
    Object? photos = null,
    Object? canBeRemoved = null,
    Object? childProducts = freezed,
  }) {
    return _then(
      _$ProductDetailImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as int,
        article:
            null == article
                ? _value.article
                : article // ignore: cast_nullable_to_non_nullable
                    as String,
        categoryId:
            freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int?,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        oldPrice:
            null == oldPrice
                ? _value.oldPrice
                : oldPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        wbFbo:
            freezed == wbFbo
                ? _value.wbFbo
                : wbFbo // ignore: cast_nullable_to_non_nullable
                    as int?,
        fboStock:
            freezed == fboStock
                ? _value.fboStock
                : fboStock // ignore: cast_nullable_to_non_nullable
                    as FboStock?,
        fboStocks:
            freezed == fboStocks
                ? _value.fboStocks
                : fboStocks // ignore: cast_nullable_to_non_nullable
                    as FboStock?,
        photo:
            null == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                    as String,
        reserve:
            null == reserve
                ? _value.reserve
                : reserve // ignore: cast_nullable_to_non_nullable
                    as int,
        marriage:
            null == marriage
                ? _value.marriage
                : marriage // ignore: cast_nullable_to_non_nullable
                    as int,
        isFragile:
            null == isFragile
                ? _value.isFragile
                : isFragile // ignore: cast_nullable_to_non_nullable
                    as bool,
        isWithVideoRecord:
            null == isWithVideoRecord
                ? _value.isWithVideoRecord
                : isWithVideoRecord // ignore: cast_nullable_to_non_nullable
                    as bool,
        isRequiredCis:
            null == isRequiredCis
                ? _value.isRequiredCis
                : isRequiredCis // ignore: cast_nullable_to_non_nullable
                    as bool,
        instructionLink:
            freezed == instructionLink
                ? _value.instructionLink
                : instructionLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        instructionText:
            freezed == instructionText
                ? _value.instructionText
                : instructionText // ignore: cast_nullable_to_non_nullable
                    as String?,
        isBox:
            null == isBox
                ? _value.isBox
                : isBox // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPackInBubbleWrap:
            null == isPackInBubbleWrap
                ? _value.isPackInBubbleWrap
                : isPackInBubbleWrap // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPackInCardboard:
            null == isPackInCardboard
                ? _value.isPackInCardboard
                : isPackInCardboard // ignore: cast_nullable_to_non_nullable
                    as bool,
        isHidden:
            null == isHidden
                ? _value.isHidden
                : isHidden // ignore: cast_nullable_to_non_nullable
                    as bool,
        isFifo:
            null == isFifo
                ? _value.isFifo
                : isFifo // ignore: cast_nullable_to_non_nullable
                    as bool,
        isDimensionsDiff:
            null == isDimensionsDiff
                ? _value.isDimensionsDiff
                : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                    as bool,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        weight:
            freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as double?,
        measuredInWarehouse:
            null == measuredInWarehouse
                ? _value.measuredInWarehouse
                : measuredInWarehouse // ignore: cast_nullable_to_non_nullable
                    as bool,
        height:
            freezed == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                    as double?,
        width:
            freezed == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as double?,
        length:
            freezed == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                    as double?,
        volume:
            freezed == volume
                ? _value.volume
                : volume // ignore: cast_nullable_to_non_nullable
                    as double?,
        comission:
            freezed == comission
                ? _value.comission
                : comission // ignore: cast_nullable_to_non_nullable
                    as int?,
        marketplaces:
            null == marketplaces
                ? _value.marketplaces
                : marketplaces // ignore: cast_nullable_to_non_nullable
                    as Marketplaces,
        foreignPurchasePrice:
            freezed == foreignPurchasePrice
                ? _value.foreignPurchasePrice
                : foreignPurchasePrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        foreignPurchasePriceCurrencySymbol:
            freezed == foreignPurchasePriceCurrencySymbol
                ? _value.foreignPurchasePriceCurrencySymbol
                : foreignPurchasePriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                    as String?,
        foreignDeliveryPrice:
            freezed == foreignDeliveryPrice
                ? _value.foreignDeliveryPrice
                : foreignDeliveryPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        foreignDeliveryPriceCurrencySymbol:
            freezed == foreignDeliveryPriceCurrencySymbol
                ? _value.foreignDeliveryPriceCurrencySymbol
                : foreignDeliveryPriceCurrencySymbol // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        barcodes:
            null == barcodes
                ? _value._barcodes
                : barcodes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        articles:
            null == articles
                ? _value._articles
                : articles // ignore: cast_nullable_to_non_nullable
                    as List<Article>,
        manufacturer:
            freezed == manufacturer
                ? _value.manufacturer
                : manufacturer // ignore: cast_nullable_to_non_nullable
                    as String?,
        photos:
            null == photos
                ? _value._photos
                : photos // ignore: cast_nullable_to_non_nullable
                    as List<Photo>,
        canBeRemoved:
            null == canBeRemoved
                ? _value.canBeRemoved
                : canBeRemoved // ignore: cast_nullable_to_non_nullable
                    as bool,
        childProducts:
            freezed == childProducts
                ? _value._childProducts
                : childProducts // ignore: cast_nullable_to_non_nullable
                    as List<ChildProduct>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailImpl implements _ProductDetail {
  const _$ProductDetailImpl({
    required this.id,
    required this.type,
    required this.article,
    this.categoryId,
    @JsonKey(name: "category_name") required this.categoryName,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.quantity,
    @JsonKey(name: 'WB_FBO') this.wbFbo,
    @JsonKey(name: 'fbo_stock') this.fboStock,
    @JsonKey(name: 'fbo_stocks') this.fboStocks,
    required this.photo,
    required this.reserve,
    required this.marriage,
    @JsonKey(name: 'is_fragile') required this.isFragile,
    @JsonKey(name: 'is_with_video_record') required this.isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required this.isRequiredCis,
    @JsonKey(name: 'instruction_link') this.instructionLink,
    @JsonKey(name: 'instruction_text') this.instructionText,
    @JsonKey(name: 'is_box') required this.isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap') required this.isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard') required this.isPackInCardboard,
    @JsonKey(name: 'is_hidden') required this.isHidden,
    @JsonKey(name: 'is_fifo') required this.isFifo,
    @JsonKey(name: 'is_dimensions_diff') required this.isDimensionsDiff,
    this.country,
    this.weight,
    required this.measuredInWarehouse,
    this.height,
    this.width,
    this.length,
    this.volume,
    this.comission,
    required this.marketplaces,
    @JsonKey(name: 'foreign_purchase_price') this.foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    this.foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') this.foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    this.foreignDeliveryPriceCurrencySymbol,
    this.description,
    required final List<String> barcodes,
    required final List<Article> articles,
    this.manufacturer,
    required final List<Photo> photos,
    required this.canBeRemoved,
    @JsonKey(name: "child_products") final List<ChildProduct>? childProducts,
  }) : _barcodes = barcodes,
       _articles = articles,
       _photos = photos,
       _childProducts = childProducts;

  factory _$ProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailImplFromJson(json);

  @override
  final int id;
  @override
  final int type;
  @override
  final String article;
  @override
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String categoryName;
  @override
  final String name;
  @override
  final double price;
  @override
  final double oldPrice;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'WB_FBO')
  final int? wbFbo;
  @override
  @JsonKey(name: 'fbo_stock')
  final FboStock? fboStock;
  @override
  @JsonKey(name: 'fbo_stocks')
  final FboStock? fboStocks;
  @override
  final String photo;
  @override
  final int reserve;
  @override
  final int marriage;
  @override
  @JsonKey(name: 'is_fragile')
  final bool isFragile;
  @override
  @JsonKey(name: 'is_with_video_record')
  final bool isWithVideoRecord;
  @override
  @JsonKey(name: 'is_required_cis')
  final bool isRequiredCis;
  @override
  @JsonKey(name: 'instruction_link')
  final String? instructionLink;
  @override
  @JsonKey(name: 'instruction_text')
  final String? instructionText;
  @override
  @JsonKey(name: 'is_box')
  final bool isBox;
  @override
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  final bool isPackInBubbleWrap;
  @override
  @JsonKey(name: 'is_pack_in_cardboard')
  final bool isPackInCardboard;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  @JsonKey(name: 'is_fifo')
  final bool isFifo;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  final bool isDimensionsDiff;
  @override
  final String? country;
  @override
  final double? weight;
  @override
  final bool measuredInWarehouse;
  @override
  final double? height;
  @override
  final double? width;
  @override
  final double? length;
  @override
  final double? volume;
  @override
  final int? comission;
  @override
  final Marketplaces marketplaces;
  @override
  @JsonKey(name: 'foreign_purchase_price')
  final double? foreignPurchasePrice;
  @override
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  final String? foreignPurchasePriceCurrencySymbol;
  @override
  @JsonKey(name: 'foreign_delivery_price')
  final double? foreignDeliveryPrice;
  @override
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  final String? foreignDeliveryPriceCurrencySymbol;
  @override
  final String? description;
  final List<String> _barcodes;
  @override
  List<String> get barcodes {
    if (_barcodes is EqualUnmodifiableListView) return _barcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcodes);
  }

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final String? manufacturer;
  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final bool canBeRemoved;
  final List<ChildProduct>? _childProducts;
  @override
  @JsonKey(name: "child_products")
  List<ChildProduct>? get childProducts {
    final value = _childProducts;
    if (value == null) return null;
    if (_childProducts is EqualUnmodifiableListView) return _childProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetail(id: $id, type: $type, article: $article, categoryId: $categoryId, categoryName: $categoryName, name: $name, price: $price, oldPrice: $oldPrice, quantity: $quantity, wbFbo: $wbFbo, fboStock: $fboStock, fboStocks: $fboStocks, photo: $photo, reserve: $reserve, marriage: $marriage, isFragile: $isFragile, isWithVideoRecord: $isWithVideoRecord, isRequiredCis: $isRequiredCis, instructionLink: $instructionLink, instructionText: $instructionText, isBox: $isBox, isPackInBubbleWrap: $isPackInBubbleWrap, isPackInCardboard: $isPackInCardboard, isHidden: $isHidden, isFifo: $isFifo, isDimensionsDiff: $isDimensionsDiff, country: $country, weight: $weight, measuredInWarehouse: $measuredInWarehouse, height: $height, width: $width, length: $length, volume: $volume, comission: $comission, marketplaces: $marketplaces, foreignPurchasePrice: $foreignPurchasePrice, foreignPurchasePriceCurrencySymbol: $foreignPurchasePriceCurrencySymbol, foreignDeliveryPrice: $foreignDeliveryPrice, foreignDeliveryPriceCurrencySymbol: $foreignDeliveryPriceCurrencySymbol, description: $description, barcodes: $barcodes, articles: $articles, manufacturer: $manufacturer, photos: $photos, canBeRemoved: $canBeRemoved, childProducts: $childProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.wbFbo, wbFbo) || other.wbFbo == wbFbo) &&
            (identical(other.fboStock, fboStock) ||
                other.fboStock == fboStock) &&
            (identical(other.fboStocks, fboStocks) ||
                other.fboStocks == fboStocks) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.reserve, reserve) || other.reserve == reserve) &&
            (identical(other.marriage, marriage) ||
                other.marriage == marriage) &&
            (identical(other.isFragile, isFragile) ||
                other.isFragile == isFragile) &&
            (identical(other.isWithVideoRecord, isWithVideoRecord) ||
                other.isWithVideoRecord == isWithVideoRecord) &&
            (identical(other.isRequiredCis, isRequiredCis) ||
                other.isRequiredCis == isRequiredCis) &&
            (identical(other.instructionLink, instructionLink) ||
                other.instructionLink == instructionLink) &&
            (identical(other.instructionText, instructionText) ||
                other.instructionText == instructionText) &&
            (identical(other.isBox, isBox) || other.isBox == isBox) &&
            (identical(other.isPackInBubbleWrap, isPackInBubbleWrap) ||
                other.isPackInBubbleWrap == isPackInBubbleWrap) &&
            (identical(other.isPackInCardboard, isPackInCardboard) ||
                other.isPackInCardboard == isPackInCardboard) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isFifo, isFifo) || other.isFifo == isFifo) &&
            (identical(other.isDimensionsDiff, isDimensionsDiff) ||
                other.isDimensionsDiff == isDimensionsDiff) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.measuredInWarehouse, measuredInWarehouse) ||
                other.measuredInWarehouse == measuredInWarehouse) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.comission, comission) ||
                other.comission == comission) &&
            (identical(other.marketplaces, marketplaces) ||
                other.marketplaces == marketplaces) &&
            (identical(other.foreignPurchasePrice, foreignPurchasePrice) ||
                other.foreignPurchasePrice == foreignPurchasePrice) &&
            (identical(
                  other.foreignPurchasePriceCurrencySymbol,
                  foreignPurchasePriceCurrencySymbol,
                ) ||
                other.foreignPurchasePriceCurrencySymbol ==
                    foreignPurchasePriceCurrencySymbol) &&
            (identical(other.foreignDeliveryPrice, foreignDeliveryPrice) ||
                other.foreignDeliveryPrice == foreignDeliveryPrice) &&
            (identical(
                  other.foreignDeliveryPriceCurrencySymbol,
                  foreignDeliveryPriceCurrencySymbol,
                ) ||
                other.foreignDeliveryPriceCurrencySymbol ==
                    foreignDeliveryPriceCurrencySymbol) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.canBeRemoved, canBeRemoved) ||
                other.canBeRemoved == canBeRemoved) &&
            const DeepCollectionEquality().equals(
              other._childProducts,
              _childProducts,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    type,
    article,
    categoryId,
    categoryName,
    name,
    price,
    oldPrice,
    quantity,
    wbFbo,
    fboStock,
    fboStocks,
    photo,
    reserve,
    marriage,
    isFragile,
    isWithVideoRecord,
    isRequiredCis,
    instructionLink,
    instructionText,
    isBox,
    isPackInBubbleWrap,
    isPackInCardboard,
    isHidden,
    isFifo,
    isDimensionsDiff,
    country,
    weight,
    measuredInWarehouse,
    height,
    width,
    length,
    volume,
    comission,
    marketplaces,
    foreignPurchasePrice,
    foreignPurchasePriceCurrencySymbol,
    foreignDeliveryPrice,
    foreignDeliveryPriceCurrencySymbol,
    description,
    const DeepCollectionEquality().hash(_barcodes),
    const DeepCollectionEquality().hash(_articles),
    manufacturer,
    const DeepCollectionEquality().hash(_photos),
    canBeRemoved,
    const DeepCollectionEquality().hash(_childProducts),
  ]);

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailImplToJson(this);
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail({
    required final int id,
    required final int type,
    required final String article,
    final int? categoryId,
    @JsonKey(name: "category_name") required final String categoryName,
    required final String name,
    required final double price,
    required final double oldPrice,
    required final int quantity,
    @JsonKey(name: 'WB_FBO') final int? wbFbo,
    @JsonKey(name: 'fbo_stock') final FboStock? fboStock,
    @JsonKey(name: 'fbo_stocks') final FboStock? fboStocks,
    required final String photo,
    required final int reserve,
    required final int marriage,
    @JsonKey(name: 'is_fragile') required final bool isFragile,
    @JsonKey(name: 'is_with_video_record')
    required final bool isWithVideoRecord,
    @JsonKey(name: 'is_required_cis') required final bool isRequiredCis,
    @JsonKey(name: 'instruction_link') final String? instructionLink,
    @JsonKey(name: 'instruction_text') final String? instructionText,
    @JsonKey(name: 'is_box') required final bool isBox,
    @JsonKey(name: 'is_pack_in_bubble_wrap')
    required final bool isPackInBubbleWrap,
    @JsonKey(name: 'is_pack_in_cardboard')
    required final bool isPackInCardboard,
    @JsonKey(name: 'is_hidden') required final bool isHidden,
    @JsonKey(name: 'is_fifo') required final bool isFifo,
    @JsonKey(name: 'is_dimensions_diff') required final bool isDimensionsDiff,
    final String? country,
    final double? weight,
    required final bool measuredInWarehouse,
    final double? height,
    final double? width,
    final double? length,
    final double? volume,
    final int? comission,
    required final Marketplaces marketplaces,
    @JsonKey(name: 'foreign_purchase_price') final double? foreignPurchasePrice,
    @JsonKey(name: 'foreign_purchase_price_currency_symbol')
    final String? foreignPurchasePriceCurrencySymbol,
    @JsonKey(name: 'foreign_delivery_price') final double? foreignDeliveryPrice,
    @JsonKey(name: 'foreign_delivery_price_currency_symbol')
    final String? foreignDeliveryPriceCurrencySymbol,
    final String? description,
    required final List<String> barcodes,
    required final List<Article> articles,
    final String? manufacturer,
    required final List<Photo> photos,
    required final bool canBeRemoved,
    @JsonKey(name: "child_products") final List<ChildProduct>? childProducts,
  }) = _$ProductDetailImpl;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$ProductDetailImpl.fromJson;

  @override
  int get id;
  @override
  int get type;
  @override
  String get article;
  @override
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String get categoryName;
  @override
  String get name;
  @override
  double get price;
  @override
  double get oldPrice;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'WB_FBO')
  int? get wbFbo;
  @override
  @JsonKey(name: 'fbo_stock')
  FboStock? get fboStock;
  @override
  @JsonKey(name: 'fbo_stocks')
  FboStock? get fboStocks;
  @override
  String get photo;
  @override
  int get reserve;
  @override
  int get marriage;
  @override
  @JsonKey(name: 'is_fragile')
  bool get isFragile;
  @override
  @JsonKey(name: 'is_with_video_record')
  bool get isWithVideoRecord;
  @override
  @JsonKey(name: 'is_required_cis')
  bool get isRequiredCis;
  @override
  @JsonKey(name: 'instruction_link')
  String? get instructionLink;
  @override
  @JsonKey(name: 'instruction_text')
  String? get instructionText;
  @override
  @JsonKey(name: 'is_box')
  bool get isBox;
  @override
  @JsonKey(name: 'is_pack_in_bubble_wrap')
  bool get isPackInBubbleWrap;
  @override
  @JsonKey(name: 'is_pack_in_cardboard')
  bool get isPackInCardboard;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  @JsonKey(name: 'is_fifo')
  bool get isFifo;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff;
  @override
  String? get country;
  @override
  double? get weight;
  @override
  bool get measuredInWarehouse;
  @override
  double? get height;
  @override
  double? get width;
  @override
  double? get length;
  @override
  double? get volume;
  @override
  int? get comission;
  @override
  Marketplaces get marketplaces;
  @override
  @JsonKey(name: 'foreign_purchase_price')
  double? get foreignPurchasePrice;
  @override
  @JsonKey(name: 'foreign_purchase_price_currency_symbol')
  String? get foreignPurchasePriceCurrencySymbol;
  @override
  @JsonKey(name: 'foreign_delivery_price')
  double? get foreignDeliveryPrice;
  @override
  @JsonKey(name: 'foreign_delivery_price_currency_symbol')
  String? get foreignDeliveryPriceCurrencySymbol;
  @override
  String? get description;
  @override
  List<String> get barcodes;
  @override
  List<Article> get articles;
  @override
  String? get manufacturer;
  @override
  List<Photo> get photos;
  @override
  bool get canBeRemoved;
  @override
  @JsonKey(name: "child_products")
  List<ChildProduct>? get childProducts;

  /// Create a copy of ProductDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildProduct _$ChildProductFromJson(Map<String, dynamic> json) {
  return _ChildProduct.fromJson(json);
}

/// @nodoc
mixin _$ChildProduct {
  int get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "is_box")
  int get isBox => throw _privateConstructorUsedError;

  /// Serializes this ChildProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildProductCopyWith<ChildProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildProductCopyWith<$Res> {
  factory $ChildProductCopyWith(
    ChildProduct value,
    $Res Function(ChildProduct) then,
  ) = _$ChildProductCopyWithImpl<$Res, ChildProduct>;
  @useResult
  $Res call({
    int id,
    String uid,
    String name,
    int count,
    @JsonKey(name: "is_box") int isBox,
  });
}

/// @nodoc
class _$ChildProductCopyWithImpl<$Res, $Val extends ChildProduct>
    implements $ChildProductCopyWith<$Res> {
  _$ChildProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? count = null,
    Object? isBox = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            isBox:
                null == isBox
                    ? _value.isBox
                    : isBox // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChildProductImplCopyWith<$Res>
    implements $ChildProductCopyWith<$Res> {
  factory _$$ChildProductImplCopyWith(
    _$ChildProductImpl value,
    $Res Function(_$ChildProductImpl) then,
  ) = __$$ChildProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String uid,
    String name,
    int count,
    @JsonKey(name: "is_box") int isBox,
  });
}

/// @nodoc
class __$$ChildProductImplCopyWithImpl<$Res>
    extends _$ChildProductCopyWithImpl<$Res, _$ChildProductImpl>
    implements _$$ChildProductImplCopyWith<$Res> {
  __$$ChildProductImplCopyWithImpl(
    _$ChildProductImpl _value,
    $Res Function(_$ChildProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? count = null,
    Object? isBox = null,
  }) {
    return _then(
      _$ChildProductImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        isBox:
            null == isBox
                ? _value.isBox
                : isBox // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildProductImpl implements _ChildProduct {
  const _$ChildProductImpl({
    required this.id,
    required this.uid,
    required this.name,
    required this.count,
    @JsonKey(name: "is_box") required this.isBox,
  });

  factory _$ChildProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildProductImplFromJson(json);

  @override
  final int id;
  @override
  final String uid;
  @override
  final String name;
  @override
  final int count;
  @override
  @JsonKey(name: "is_box")
  final int isBox;

  @override
  String toString() {
    return 'ChildProduct(id: $id, uid: $uid, name: $name, count: $count, isBox: $isBox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isBox, isBox) || other.isBox == isBox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, name, count, isBox);

  /// Create a copy of ChildProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildProductImplCopyWith<_$ChildProductImpl> get copyWith =>
      __$$ChildProductImplCopyWithImpl<_$ChildProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildProductImplToJson(this);
  }
}

abstract class _ChildProduct implements ChildProduct {
  const factory _ChildProduct({
    required final int id,
    required final String uid,
    required final String name,
    required final int count,
    @JsonKey(name: "is_box") required final int isBox,
  }) = _$ChildProductImpl;

  factory _ChildProduct.fromJson(Map<String, dynamic> json) =
      _$ChildProductImpl.fromJson;

  @override
  int get id;
  @override
  String get uid;
  @override
  String get name;
  @override
  int get count;
  @override
  @JsonKey(name: "is_box")
  int get isBox;

  /// Create a copy of ChildProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildProductImplCopyWith<_$ChildProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Marketplaces _$MarketplacesFromJson(Map<String, dynamic> json) {
  return _Marketplaces.fromJson(json);
}

/// @nodoc
mixin _$Marketplaces {
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  MarketplaceStatus get yandexMarketFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  MarketplaceStatus get yandexMarketFbsFast =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'WILDBERRIES_FBS')
  MarketplaceStatus get wildberriesFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'OZON_FBS')
  MarketplaceStatus get ozonFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  MarketplaceStatus get ozonRealFbsExpress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'SBER_FBS')
  MarketplaceStatus get sberFbs => throw _privateConstructorUsedError;

  /// Serializes this Marketplaces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Marketplaces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketplacesCopyWith<Marketplaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplacesCopyWith<$Res> {
  factory $MarketplacesCopyWith(
    Marketplaces value,
    $Res Function(Marketplaces) then,
  ) = _$MarketplacesCopyWithImpl<$Res, Marketplaces>;
  @useResult
  $Res call({
    @JsonKey(name: 'YANDEX_MARKET_FBS') MarketplaceStatus yandexMarketFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    MarketplaceStatus yandexMarketFbsFast,
    @JsonKey(name: 'WILDBERRIES_FBS') MarketplaceStatus wildberriesFbs,
    @JsonKey(name: 'OZON_FBS') MarketplaceStatus ozonFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    MarketplaceStatus ozonRealFbsExpress,
    @JsonKey(name: 'SBER_FBS') MarketplaceStatus sberFbs,
  });
}

/// @nodoc
class _$MarketplacesCopyWithImpl<$Res, $Val extends Marketplaces>
    implements $MarketplacesCopyWith<$Res> {
  _$MarketplacesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Marketplaces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yandexMarketFbs = null,
    Object? yandexMarketFbsFast = null,
    Object? wildberriesFbs = null,
    Object? ozonFbs = null,
    Object? ozonRealFbsExpress = null,
    Object? sberFbs = null,
  }) {
    return _then(
      _value.copyWith(
            yandexMarketFbs:
                null == yandexMarketFbs
                    ? _value.yandexMarketFbs
                    : yandexMarketFbs // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
            yandexMarketFbsFast:
                null == yandexMarketFbsFast
                    ? _value.yandexMarketFbsFast
                    : yandexMarketFbsFast // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
            wildberriesFbs:
                null == wildberriesFbs
                    ? _value.wildberriesFbs
                    : wildberriesFbs // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
            ozonFbs:
                null == ozonFbs
                    ? _value.ozonFbs
                    : ozonFbs // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
            ozonRealFbsExpress:
                null == ozonRealFbsExpress
                    ? _value.ozonRealFbsExpress
                    : ozonRealFbsExpress // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
            sberFbs:
                null == sberFbs
                    ? _value.sberFbs
                    : sberFbs // ignore: cast_nullable_to_non_nullable
                        as MarketplaceStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarketplacesImplCopyWith<$Res>
    implements $MarketplacesCopyWith<$Res> {
  factory _$$MarketplacesImplCopyWith(
    _$MarketplacesImpl value,
    $Res Function(_$MarketplacesImpl) then,
  ) = __$$MarketplacesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'YANDEX_MARKET_FBS') MarketplaceStatus yandexMarketFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    MarketplaceStatus yandexMarketFbsFast,
    @JsonKey(name: 'WILDBERRIES_FBS') MarketplaceStatus wildberriesFbs,
    @JsonKey(name: 'OZON_FBS') MarketplaceStatus ozonFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    MarketplaceStatus ozonRealFbsExpress,
    @JsonKey(name: 'SBER_FBS') MarketplaceStatus sberFbs,
  });
}

/// @nodoc
class __$$MarketplacesImplCopyWithImpl<$Res>
    extends _$MarketplacesCopyWithImpl<$Res, _$MarketplacesImpl>
    implements _$$MarketplacesImplCopyWith<$Res> {
  __$$MarketplacesImplCopyWithImpl(
    _$MarketplacesImpl _value,
    $Res Function(_$MarketplacesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Marketplaces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yandexMarketFbs = null,
    Object? yandexMarketFbsFast = null,
    Object? wildberriesFbs = null,
    Object? ozonFbs = null,
    Object? ozonRealFbsExpress = null,
    Object? sberFbs = null,
  }) {
    return _then(
      _$MarketplacesImpl(
        yandexMarketFbs:
            null == yandexMarketFbs
                ? _value.yandexMarketFbs
                : yandexMarketFbs // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
        yandexMarketFbsFast:
            null == yandexMarketFbsFast
                ? _value.yandexMarketFbsFast
                : yandexMarketFbsFast // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
        wildberriesFbs:
            null == wildberriesFbs
                ? _value.wildberriesFbs
                : wildberriesFbs // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
        ozonFbs:
            null == ozonFbs
                ? _value.ozonFbs
                : ozonFbs // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
        ozonRealFbsExpress:
            null == ozonRealFbsExpress
                ? _value.ozonRealFbsExpress
                : ozonRealFbsExpress // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
        sberFbs:
            null == sberFbs
                ? _value.sberFbs
                : sberFbs // ignore: cast_nullable_to_non_nullable
                    as MarketplaceStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplacesImpl implements _Marketplaces {
  const _$MarketplacesImpl({
    @JsonKey(name: 'YANDEX_MARKET_FBS') required this.yandexMarketFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST') required this.yandexMarketFbsFast,
    @JsonKey(name: 'WILDBERRIES_FBS') required this.wildberriesFbs,
    @JsonKey(name: 'OZON_FBS') required this.ozonFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS') required this.ozonRealFbsExpress,
    @JsonKey(name: 'SBER_FBS') required this.sberFbs,
  });

  factory _$MarketplacesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplacesImplFromJson(json);

  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  final MarketplaceStatus yandexMarketFbs;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  final MarketplaceStatus yandexMarketFbsFast;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS')
  final MarketplaceStatus wildberriesFbs;
  @override
  @JsonKey(name: 'OZON_FBS')
  final MarketplaceStatus ozonFbs;
  @override
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  final MarketplaceStatus ozonRealFbsExpress;
  @override
  @JsonKey(name: 'SBER_FBS')
  final MarketplaceStatus sberFbs;

  @override
  String toString() {
    return 'Marketplaces(yandexMarketFbs: $yandexMarketFbs, yandexMarketFbsFast: $yandexMarketFbsFast, wildberriesFbs: $wildberriesFbs, ozonFbs: $ozonFbs, ozonRealFbsExpress: $ozonRealFbsExpress, sberFbs: $sberFbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplacesImpl &&
            (identical(other.yandexMarketFbs, yandexMarketFbs) ||
                other.yandexMarketFbs == yandexMarketFbs) &&
            (identical(other.yandexMarketFbsFast, yandexMarketFbsFast) ||
                other.yandexMarketFbsFast == yandexMarketFbsFast) &&
            (identical(other.wildberriesFbs, wildberriesFbs) ||
                other.wildberriesFbs == wildberriesFbs) &&
            (identical(other.ozonFbs, ozonFbs) || other.ozonFbs == ozonFbs) &&
            (identical(other.ozonRealFbsExpress, ozonRealFbsExpress) ||
                other.ozonRealFbsExpress == ozonRealFbsExpress) &&
            (identical(other.sberFbs, sberFbs) || other.sberFbs == sberFbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    yandexMarketFbs,
    yandexMarketFbsFast,
    wildberriesFbs,
    ozonFbs,
    ozonRealFbsExpress,
    sberFbs,
  );

  /// Create a copy of Marketplaces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplacesImplCopyWith<_$MarketplacesImpl> get copyWith =>
      __$$MarketplacesImplCopyWithImpl<_$MarketplacesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplacesImplToJson(this);
  }
}

abstract class _Marketplaces implements Marketplaces {
  const factory _Marketplaces({
    @JsonKey(name: 'YANDEX_MARKET_FBS')
    required final MarketplaceStatus yandexMarketFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    required final MarketplaceStatus yandexMarketFbsFast,
    @JsonKey(name: 'WILDBERRIES_FBS')
    required final MarketplaceStatus wildberriesFbs,
    @JsonKey(name: 'OZON_FBS') required final MarketplaceStatus ozonFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    required final MarketplaceStatus ozonRealFbsExpress,
    @JsonKey(name: 'SBER_FBS') required final MarketplaceStatus sberFbs,
  }) = _$MarketplacesImpl;

  factory _Marketplaces.fromJson(Map<String, dynamic> json) =
      _$MarketplacesImpl.fromJson;

  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  MarketplaceStatus get yandexMarketFbs;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  MarketplaceStatus get yandexMarketFbsFast;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS')
  MarketplaceStatus get wildberriesFbs;
  @override
  @JsonKey(name: 'OZON_FBS')
  MarketplaceStatus get ozonFbs;
  @override
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  MarketplaceStatus get ozonRealFbsExpress;
  @override
  @JsonKey(name: 'SBER_FBS')
  MarketplaceStatus get sberFbs;

  /// Create a copy of Marketplaces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplacesImplCopyWith<_$MarketplacesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get article => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call({String article, bool isMain});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? article = null, Object? isMain = null}) {
    return _then(
      _value.copyWith(
            article:
                null == article
                    ? _value.article
                    : article // ignore: cast_nullable_to_non_nullable
                        as String,
            isMain:
                null == isMain
                    ? _value.isMain
                    : isMain // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
    _$ArticleImpl value,
    $Res Function(_$ArticleImpl) then,
  ) = __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String article, bool isMain});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
    _$ArticleImpl _value,
    $Res Function(_$ArticleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? article = null, Object? isMain = null}) {
    return _then(
      _$ArticleImpl(
        article:
            null == article
                ? _value.article
                : article // ignore: cast_nullable_to_non_nullable
                    as String,
        isMain:
            null == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl({required this.article, required this.isMain});

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final String article;
  @override
  final bool isMain;

  @override
  String toString() {
    return 'Article(article: $article, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, article, isMain);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(this);
  }
}

abstract class _Article implements Article {
  const factory _Article({
    required final String article,
    required final bool isMain,
  }) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  String get article;
  @override
  bool get isMain;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  int? get id => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({int? id, String file, bool isMain});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = null,
    Object? isMain = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            file:
                null == file
                    ? _value.file
                    : file // ignore: cast_nullable_to_non_nullable
                        as String,
            isMain:
                null == isMain
                    ? _value.isMain
                    : isMain // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
    _$PhotoImpl value,
    $Res Function(_$PhotoImpl) then,
  ) = __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String file, bool isMain});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
    _$PhotoImpl _value,
    $Res Function(_$PhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = null,
    Object? isMain = null,
  }) {
    return _then(
      _$PhotoImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        file:
            null == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                    as String,
        isMain:
            null == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({this.id, required this.file, required this.isMain});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final int? id;
  @override
  final String file;
  @override
  final bool isMain;

  @override
  String toString() {
    return 'Photo(id: $id, file: $file, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, file, isMain);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(this);
  }
}

abstract class _Photo implements Photo {
  const factory _Photo({
    final int? id,
    required final String file,
    required final bool isMain,
  }) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  int? get id;
  @override
  String get file;
  @override
  bool get isMain;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
