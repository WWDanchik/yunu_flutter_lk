// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductUpdate _$ProductUpdateFromJson(Map<String, dynamic> json) {
  return _ProductUpdate.fromJson(json);
}

/// @nodoc
mixin _$ProductUpdate {
  Product get product => throw _privateConstructorUsedError;

  /// Serializes this ProductUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductUpdateCopyWith<ProductUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductUpdateCopyWith<$Res> {
  factory $ProductUpdateCopyWith(
    ProductUpdate value,
    $Res Function(ProductUpdate) then,
  ) = _$ProductUpdateCopyWithImpl<$Res, ProductUpdate>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductUpdateCopyWithImpl<$Res, $Val extends ProductUpdate>
    implements $ProductUpdateCopyWith<$Res> {
  _$ProductUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _value.copyWith(
            product:
                null == product
                    ? _value.product
                    : product // ignore: cast_nullable_to_non_nullable
                        as Product,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductUpdateImplCopyWith<$Res>
    implements $ProductUpdateCopyWith<$Res> {
  factory _$$ProductUpdateImplCopyWith(
    _$ProductUpdateImpl value,
    $Res Function(_$ProductUpdateImpl) then,
  ) = __$$ProductUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductUpdateImplCopyWithImpl<$Res>
    extends _$ProductUpdateCopyWithImpl<$Res, _$ProductUpdateImpl>
    implements _$$ProductUpdateImplCopyWith<$Res> {
  __$$ProductUpdateImplCopyWithImpl(
    _$ProductUpdateImpl _value,
    $Res Function(_$ProductUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$ProductUpdateImpl(
        product:
            null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as Product,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductUpdateImpl implements _ProductUpdate {
  const _$ProductUpdateImpl({required this.product});

  factory _$ProductUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductUpdateImplFromJson(json);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductUpdate(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductUpdateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      __$$ProductUpdateImplCopyWithImpl<_$ProductUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductUpdateImplToJson(this);
  }
}

abstract class _ProductUpdate implements ProductUpdate {
  const factory _ProductUpdate({required final Product product}) =
      _$ProductUpdateImpl;

  factory _ProductUpdate.fromJson(Map<String, dynamic> json) =
      _$ProductUpdateImpl.fromJson;

  @override
  Product get product;

  /// Create a copy of ProductUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
