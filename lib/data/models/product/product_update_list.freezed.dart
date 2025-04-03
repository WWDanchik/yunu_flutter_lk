// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_update_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductUpdateList _$ProductUpdateListFromJson(Map<String, dynamic> json) {
  return _ProductUpdateList.fromJson(json);
}

/// @nodoc
mixin _$ProductUpdateList {
  List<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this ProductUpdateList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductUpdateList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductUpdateListCopyWith<ProductUpdateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductUpdateListCopyWith<$Res> {
  factory $ProductUpdateListCopyWith(
    ProductUpdateList value,
    $Res Function(ProductUpdateList) then,
  ) = _$ProductUpdateListCopyWithImpl<$Res, ProductUpdateList>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductUpdateListCopyWithImpl<$Res, $Val extends ProductUpdateList>
    implements $ProductUpdateListCopyWith<$Res> {
  _$ProductUpdateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductUpdateList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? products = null}) {
    return _then(
      _value.copyWith(
            products:
                null == products
                    ? _value.products
                    : products // ignore: cast_nullable_to_non_nullable
                        as List<Product>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductUpdateListImplCopyWith<$Res>
    implements $ProductUpdateListCopyWith<$Res> {
  factory _$$ProductUpdateListImplCopyWith(
    _$ProductUpdateListImpl value,
    $Res Function(_$ProductUpdateListImpl) then,
  ) = __$$ProductUpdateListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductUpdateListImplCopyWithImpl<$Res>
    extends _$ProductUpdateListCopyWithImpl<$Res, _$ProductUpdateListImpl>
    implements _$$ProductUpdateListImplCopyWith<$Res> {
  __$$ProductUpdateListImplCopyWithImpl(
    _$ProductUpdateListImpl _value,
    $Res Function(_$ProductUpdateListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductUpdateList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? products = null}) {
    return _then(
      _$ProductUpdateListImpl(
        products:
            null == products
                ? _value._products
                : products // ignore: cast_nullable_to_non_nullable
                    as List<Product>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductUpdateListImpl implements _ProductUpdateList {
  const _$ProductUpdateListImpl({required final List<Product> products})
    : _products = products;

  factory _$ProductUpdateListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductUpdateListImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductUpdateList(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductUpdateListImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductUpdateList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductUpdateListImplCopyWith<_$ProductUpdateListImpl> get copyWith =>
      __$$ProductUpdateListImplCopyWithImpl<_$ProductUpdateListImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductUpdateListImplToJson(this);
  }
}

abstract class _ProductUpdateList implements ProductUpdateList {
  const factory _ProductUpdateList({required final List<Product> products}) =
      _$ProductUpdateListImpl;

  factory _ProductUpdateList.fromJson(Map<String, dynamic> json) =
      _$ProductUpdateListImpl.fromJson;

  @override
  List<Product> get products;

  /// Create a copy of ProductUpdateList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductUpdateListImplCopyWith<_$ProductUpdateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
