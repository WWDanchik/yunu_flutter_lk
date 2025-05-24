// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorList _$VendorListFromJson(Map<String, dynamic> json) {
  return _VendorList.fromJson(json);
}

/// @nodoc
mixin _$VendorList {
  List<Vendor> get list => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this VendorList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorListCopyWith<VendorList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorListCopyWith<$Res> {
  factory $VendorListCopyWith(
    VendorList value,
    $Res Function(VendorList) then,
  ) = _$VendorListCopyWithImpl<$Res, VendorList>;
  @useResult
  $Res call({List<Vendor> list, int total});
}

/// @nodoc
class _$VendorListCopyWithImpl<$Res, $Val extends VendorList>
    implements $VendorListCopyWith<$Res> {
  _$VendorListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null, Object? total = null}) {
    return _then(
      _value.copyWith(
            list:
                null == list
                    ? _value.list
                    : list // ignore: cast_nullable_to_non_nullable
                        as List<Vendor>,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VendorListImplCopyWith<$Res>
    implements $VendorListCopyWith<$Res> {
  factory _$$VendorListImplCopyWith(
    _$VendorListImpl value,
    $Res Function(_$VendorListImpl) then,
  ) = __$$VendorListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Vendor> list, int total});
}

/// @nodoc
class __$$VendorListImplCopyWithImpl<$Res>
    extends _$VendorListCopyWithImpl<$Res, _$VendorListImpl>
    implements _$$VendorListImplCopyWith<$Res> {
  __$$VendorListImplCopyWithImpl(
    _$VendorListImpl _value,
    $Res Function(_$VendorListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null, Object? total = null}) {
    return _then(
      _$VendorListImpl(
        list:
            null == list
                ? _value._list
                : list // ignore: cast_nullable_to_non_nullable
                    as List<Vendor>,
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorListImpl implements _VendorList {
  _$VendorListImpl({required final List<Vendor> list, required this.total})
    : _list = list;

  factory _$VendorListImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorListImplFromJson(json);

  final List<Vendor> _list;
  @override
  List<Vendor> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'VendorList(list: $list, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_list),
    total,
  );

  /// Create a copy of VendorList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorListImplCopyWith<_$VendorListImpl> get copyWith =>
      __$$VendorListImplCopyWithImpl<_$VendorListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorListImplToJson(this);
  }
}

abstract class _VendorList implements VendorList {
  factory _VendorList({
    required final List<Vendor> list,
    required final int total,
  }) = _$VendorListImpl;

  factory _VendorList.fromJson(Map<String, dynamic> json) =
      _$VendorListImpl.fromJson;

  @override
  List<Vendor> get list;
  @override
  int get total;

  /// Create a copy of VendorList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorListImplCopyWith<_$VendorListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
