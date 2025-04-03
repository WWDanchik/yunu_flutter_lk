// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_stock_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Cabinet _$CabinetFromJson(Map<String, dynamic> json) {
  return _Cabinet.fromJson(json);
}

/// @nodoc
mixin _$Cabinet {
  @JsonKey(name: 'cabinet_id')
  int get cabinetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cabinet_name')
  String get cabinetName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_disabled')
  bool get isDisabled => throw _privateConstructorUsedError;

  /// Serializes this Cabinet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CabinetCopyWith<Cabinet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CabinetCopyWith<$Res> {
  factory $CabinetCopyWith(Cabinet value, $Res Function(Cabinet) then) =
      _$CabinetCopyWithImpl<$Res, Cabinet>;
  @useResult
  $Res call({
    @JsonKey(name: 'cabinet_id') int cabinetId,
    @JsonKey(name: 'cabinet_name') String cabinetName,
    @JsonKey(name: 'is_disabled') bool isDisabled,
  });
}

/// @nodoc
class _$CabinetCopyWithImpl<$Res, $Val extends Cabinet>
    implements $CabinetCopyWith<$Res> {
  _$CabinetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cabinetId = null,
    Object? cabinetName = null,
    Object? isDisabled = null,
  }) {
    return _then(
      _value.copyWith(
            cabinetId:
                null == cabinetId
                    ? _value.cabinetId
                    : cabinetId // ignore: cast_nullable_to_non_nullable
                        as int,
            cabinetName:
                null == cabinetName
                    ? _value.cabinetName
                    : cabinetName // ignore: cast_nullable_to_non_nullable
                        as String,
            isDisabled:
                null == isDisabled
                    ? _value.isDisabled
                    : isDisabled // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CabinetImplCopyWith<$Res> implements $CabinetCopyWith<$Res> {
  factory _$$CabinetImplCopyWith(
    _$CabinetImpl value,
    $Res Function(_$CabinetImpl) then,
  ) = __$$CabinetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cabinet_id') int cabinetId,
    @JsonKey(name: 'cabinet_name') String cabinetName,
    @JsonKey(name: 'is_disabled') bool isDisabled,
  });
}

/// @nodoc
class __$$CabinetImplCopyWithImpl<$Res>
    extends _$CabinetCopyWithImpl<$Res, _$CabinetImpl>
    implements _$$CabinetImplCopyWith<$Res> {
  __$$CabinetImplCopyWithImpl(
    _$CabinetImpl _value,
    $Res Function(_$CabinetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cabinetId = null,
    Object? cabinetName = null,
    Object? isDisabled = null,
  }) {
    return _then(
      _$CabinetImpl(
        cabinetId:
            null == cabinetId
                ? _value.cabinetId
                : cabinetId // ignore: cast_nullable_to_non_nullable
                    as int,
        cabinetName:
            null == cabinetName
                ? _value.cabinetName
                : cabinetName // ignore: cast_nullable_to_non_nullable
                    as String,
        isDisabled:
            null == isDisabled
                ? _value.isDisabled
                : isDisabled // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CabinetImpl implements _Cabinet {
  const _$CabinetImpl({
    @JsonKey(name: 'cabinet_id') required this.cabinetId,
    @JsonKey(name: 'cabinet_name') required this.cabinetName,
    @JsonKey(name: 'is_disabled') required this.isDisabled,
  });

  factory _$CabinetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CabinetImplFromJson(json);

  @override
  @JsonKey(name: 'cabinet_id')
  final int cabinetId;
  @override
  @JsonKey(name: 'cabinet_name')
  final String cabinetName;
  @override
  @JsonKey(name: 'is_disabled')
  final bool isDisabled;

  @override
  String toString() {
    return 'Cabinet(cabinetId: $cabinetId, cabinetName: $cabinetName, isDisabled: $isDisabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CabinetImpl &&
            (identical(other.cabinetId, cabinetId) ||
                other.cabinetId == cabinetId) &&
            (identical(other.cabinetName, cabinetName) ||
                other.cabinetName == cabinetName) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cabinetId, cabinetName, isDisabled);

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CabinetImplCopyWith<_$CabinetImpl> get copyWith =>
      __$$CabinetImplCopyWithImpl<_$CabinetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CabinetImplToJson(this);
  }
}

abstract class _Cabinet implements Cabinet {
  const factory _Cabinet({
    @JsonKey(name: 'cabinet_id') required final int cabinetId,
    @JsonKey(name: 'cabinet_name') required final String cabinetName,
    @JsonKey(name: 'is_disabled') required final bool isDisabled,
  }) = _$CabinetImpl;

  factory _Cabinet.fromJson(Map<String, dynamic> json) = _$CabinetImpl.fromJson;

  @override
  @JsonKey(name: 'cabinet_id')
  int get cabinetId;
  @override
  @JsonKey(name: 'cabinet_name')
  String get cabinetName;
  @override
  @JsonKey(name: 'is_disabled')
  bool get isDisabled;

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CabinetImplCopyWith<_$CabinetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductStockSettings _$ProductStockSettingsFromJson(Map<String, dynamic> json) {
  return _ProductStockSettings.fromJson(json);
}

/// @nodoc
mixin _$ProductStockSettings {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_stock_settings')
  Map<String, Cabinet> get cabinets => throw _privateConstructorUsedError;

  /// Serializes this ProductStockSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductStockSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStockSettingsCopyWith<ProductStockSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStockSettingsCopyWith<$Res> {
  factory $ProductStockSettingsCopyWith(
    ProductStockSettings value,
    $Res Function(ProductStockSettings) then,
  ) = _$ProductStockSettingsCopyWithImpl<$Res, ProductStockSettings>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'update_stock_settings') Map<String, Cabinet> cabinets,
  });
}

/// @nodoc
class _$ProductStockSettingsCopyWithImpl<
  $Res,
  $Val extends ProductStockSettings
>
    implements $ProductStockSettingsCopyWith<$Res> {
  _$ProductStockSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductStockSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? cabinets = null}) {
    return _then(
      _value.copyWith(
            productId:
                null == productId
                    ? _value.productId
                    : productId // ignore: cast_nullable_to_non_nullable
                        as int,
            cabinets:
                null == cabinets
                    ? _value.cabinets
                    : cabinets // ignore: cast_nullable_to_non_nullable
                        as Map<String, Cabinet>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductStockSettingsImplCopyWith<$Res>
    implements $ProductStockSettingsCopyWith<$Res> {
  factory _$$ProductStockSettingsImplCopyWith(
    _$ProductStockSettingsImpl value,
    $Res Function(_$ProductStockSettingsImpl) then,
  ) = __$$ProductStockSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'update_stock_settings') Map<String, Cabinet> cabinets,
  });
}

/// @nodoc
class __$$ProductStockSettingsImplCopyWithImpl<$Res>
    extends _$ProductStockSettingsCopyWithImpl<$Res, _$ProductStockSettingsImpl>
    implements _$$ProductStockSettingsImplCopyWith<$Res> {
  __$$ProductStockSettingsImplCopyWithImpl(
    _$ProductStockSettingsImpl _value,
    $Res Function(_$ProductStockSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductStockSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? cabinets = null}) {
    return _then(
      _$ProductStockSettingsImpl(
        productId:
            null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                    as int,
        cabinets:
            null == cabinets
                ? _value._cabinets
                : cabinets // ignore: cast_nullable_to_non_nullable
                    as Map<String, Cabinet>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductStockSettingsImpl implements _ProductStockSettings {
  const _$ProductStockSettingsImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'update_stock_settings')
    required final Map<String, Cabinet> cabinets,
  }) : _cabinets = cabinets;

  factory _$ProductStockSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductStockSettingsImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  final Map<String, Cabinet> _cabinets;
  @override
  @JsonKey(name: 'update_stock_settings')
  Map<String, Cabinet> get cabinets {
    if (_cabinets is EqualUnmodifiableMapView) return _cabinets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cabinets);
  }

  @override
  String toString() {
    return 'ProductStockSettings(productId: $productId, cabinets: $cabinets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStockSettingsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(other._cabinets, _cabinets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    const DeepCollectionEquality().hash(_cabinets),
  );

  /// Create a copy of ProductStockSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStockSettingsImplCopyWith<_$ProductStockSettingsImpl>
  get copyWith =>
      __$$ProductStockSettingsImplCopyWithImpl<_$ProductStockSettingsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductStockSettingsImplToJson(this);
  }
}

abstract class _ProductStockSettings implements ProductStockSettings {
  const factory _ProductStockSettings({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'update_stock_settings')
    required final Map<String, Cabinet> cabinets,
  }) = _$ProductStockSettingsImpl;

  factory _ProductStockSettings.fromJson(Map<String, dynamic> json) =
      _$ProductStockSettingsImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'update_stock_settings')
  Map<String, Cabinet> get cabinets;

  /// Create a copy of ProductStockSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStockSettingsImplCopyWith<_$ProductStockSettingsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
