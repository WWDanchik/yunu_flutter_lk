// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_list_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MarketplaceResult _$MarketplaceResultFromJson(Map<String, dynamic> json) {
  return _MarketplaceResult.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceResult {
  List<Marketplace> get marketplaces => throw _privateConstructorUsedError;

  /// Serializes this MarketplaceResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketplaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketplaceResultCopyWith<MarketplaceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceResultCopyWith<$Res> {
  factory $MarketplaceResultCopyWith(
    MarketplaceResult value,
    $Res Function(MarketplaceResult) then,
  ) = _$MarketplaceResultCopyWithImpl<$Res, MarketplaceResult>;
  @useResult
  $Res call({List<Marketplace> marketplaces});
}

/// @nodoc
class _$MarketplaceResultCopyWithImpl<$Res, $Val extends MarketplaceResult>
    implements $MarketplaceResultCopyWith<$Res> {
  _$MarketplaceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketplaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? marketplaces = null}) {
    return _then(
      _value.copyWith(
            marketplaces:
                null == marketplaces
                    ? _value.marketplaces
                    : marketplaces // ignore: cast_nullable_to_non_nullable
                        as List<Marketplace>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarketplaceResultImplCopyWith<$Res>
    implements $MarketplaceResultCopyWith<$Res> {
  factory _$$MarketplaceResultImplCopyWith(
    _$MarketplaceResultImpl value,
    $Res Function(_$MarketplaceResultImpl) then,
  ) = __$$MarketplaceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Marketplace> marketplaces});
}

/// @nodoc
class __$$MarketplaceResultImplCopyWithImpl<$Res>
    extends _$MarketplaceResultCopyWithImpl<$Res, _$MarketplaceResultImpl>
    implements _$$MarketplaceResultImplCopyWith<$Res> {
  __$$MarketplaceResultImplCopyWithImpl(
    _$MarketplaceResultImpl _value,
    $Res Function(_$MarketplaceResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarketplaceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? marketplaces = null}) {
    return _then(
      _$MarketplaceResultImpl(
        marketplaces:
            null == marketplaces
                ? _value._marketplaces
                : marketplaces // ignore: cast_nullable_to_non_nullable
                    as List<Marketplace>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplaceResultImpl implements _MarketplaceResult {
  const _$MarketplaceResultImpl({required final List<Marketplace> marketplaces})
    : _marketplaces = marketplaces;

  factory _$MarketplaceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceResultImplFromJson(json);

  final List<Marketplace> _marketplaces;
  @override
  List<Marketplace> get marketplaces {
    if (_marketplaces is EqualUnmodifiableListView) return _marketplaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketplaces);
  }

  @override
  String toString() {
    return 'MarketplaceResult(marketplaces: $marketplaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceResultImpl &&
            const DeepCollectionEquality().equals(
              other._marketplaces,
              _marketplaces,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_marketplaces),
  );

  /// Create a copy of MarketplaceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceResultImplCopyWith<_$MarketplaceResultImpl> get copyWith =>
      __$$MarketplaceResultImplCopyWithImpl<_$MarketplaceResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceResultImplToJson(this);
  }
}

abstract class _MarketplaceResult implements MarketplaceResult {
  const factory _MarketplaceResult({
    required final List<Marketplace> marketplaces,
  }) = _$MarketplaceResultImpl;

  factory _MarketplaceResult.fromJson(Map<String, dynamic> json) =
      _$MarketplaceResultImpl.fromJson;

  @override
  List<Marketplace> get marketplaces;

  /// Create a copy of MarketplaceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceResultImplCopyWith<_$MarketplaceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Marketplace _$MarketplaceFromJson(Map<String, dynamic> json) {
  return _Marketplace.fromJson(json);
}

/// @nodoc
mixin _$Marketplace {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  MarketplaceOld get old => throw _privateConstructorUsedError;

  /// Serializes this Marketplace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketplaceCopyWith<Marketplace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceCopyWith<$Res> {
  factory $MarketplaceCopyWith(
    Marketplace value,
    $Res Function(Marketplace) then,
  ) = _$MarketplaceCopyWithImpl<$Res, Marketplace>;
  @useResult
  $Res call({int id, String name, String color, MarketplaceOld old});

  $MarketplaceOldCopyWith<$Res> get old;
}

/// @nodoc
class _$MarketplaceCopyWithImpl<$Res, $Val extends Marketplace>
    implements $MarketplaceCopyWith<$Res> {
  _$MarketplaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? old = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as String,
            old:
                null == old
                    ? _value.old
                    : old // ignore: cast_nullable_to_non_nullable
                        as MarketplaceOld,
          )
          as $Val,
    );
  }

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketplaceOldCopyWith<$Res> get old {
    return $MarketplaceOldCopyWith<$Res>(_value.old, (value) {
      return _then(_value.copyWith(old: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketplaceImplCopyWith<$Res>
    implements $MarketplaceCopyWith<$Res> {
  factory _$$MarketplaceImplCopyWith(
    _$MarketplaceImpl value,
    $Res Function(_$MarketplaceImpl) then,
  ) = __$$MarketplaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String color, MarketplaceOld old});

  @override
  $MarketplaceOldCopyWith<$Res> get old;
}

/// @nodoc
class __$$MarketplaceImplCopyWithImpl<$Res>
    extends _$MarketplaceCopyWithImpl<$Res, _$MarketplaceImpl>
    implements _$$MarketplaceImplCopyWith<$Res> {
  __$$MarketplaceImplCopyWithImpl(
    _$MarketplaceImpl _value,
    $Res Function(_$MarketplaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? old = null,
  }) {
    return _then(
      _$MarketplaceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as String,
        old:
            null == old
                ? _value.old
                : old // ignore: cast_nullable_to_non_nullable
                    as MarketplaceOld,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplaceImpl implements _Marketplace {
  const _$MarketplaceImpl({
    required this.id,
    required this.name,
    required this.color,
    required this.old,
  });

  factory _$MarketplaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String color;
  @override
  final MarketplaceOld old;

  @override
  String toString() {
    return 'Marketplace(id: $id, name: $name, color: $color, old: $old)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.old, old) || other.old == old));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, old);

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceImplCopyWith<_$MarketplaceImpl> get copyWith =>
      __$$MarketplaceImplCopyWithImpl<_$MarketplaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceImplToJson(this);
  }
}

abstract class _Marketplace implements Marketplace {
  const factory _Marketplace({
    required final int id,
    required final String name,
    required final String color,
    required final MarketplaceOld old,
  }) = _$MarketplaceImpl;

  factory _Marketplace.fromJson(Map<String, dynamic> json) =
      _$MarketplaceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get color;
  @override
  MarketplaceOld get old;

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceImplCopyWith<_$MarketplaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketplaceOld _$MarketplaceOldFromJson(Map<String, dynamic> json) {
  return _MarketplaceOld.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceOld {
  String? get uid => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this MarketplaceOld to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketplaceOld
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketplaceOldCopyWith<MarketplaceOld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceOldCopyWith<$Res> {
  factory $MarketplaceOldCopyWith(
    MarketplaceOld value,
    $Res Function(MarketplaceOld) then,
  ) = _$MarketplaceOldCopyWithImpl<$Res, MarketplaceOld>;
  @useResult
  $Res call({String? uid, String? type, String? id});
}

/// @nodoc
class _$MarketplaceOldCopyWithImpl<$Res, $Val extends MarketplaceOld>
    implements $MarketplaceOldCopyWith<$Res> {
  _$MarketplaceOldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketplaceOld
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _value.copyWith(
            uid:
                freezed == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarketplaceOldImplCopyWith<$Res>
    implements $MarketplaceOldCopyWith<$Res> {
  factory _$$MarketplaceOldImplCopyWith(
    _$MarketplaceOldImpl value,
    $Res Function(_$MarketplaceOldImpl) then,
  ) = __$$MarketplaceOldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid, String? type, String? id});
}

/// @nodoc
class __$$MarketplaceOldImplCopyWithImpl<$Res>
    extends _$MarketplaceOldCopyWithImpl<$Res, _$MarketplaceOldImpl>
    implements _$$MarketplaceOldImplCopyWith<$Res> {
  __$$MarketplaceOldImplCopyWithImpl(
    _$MarketplaceOldImpl _value,
    $Res Function(_$MarketplaceOldImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarketplaceOld
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(
      _$MarketplaceOldImpl(
        uid:
            freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplaceOldImpl implements _MarketplaceOld {
  const _$MarketplaceOldImpl({this.uid, this.type, this.id});

  factory _$MarketplaceOldImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceOldImplFromJson(json);

  @override
  final String? uid;
  @override
  final String? type;
  @override
  final String? id;

  @override
  String toString() {
    return 'MarketplaceOld(uid: $uid, type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceOldImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, type, id);

  /// Create a copy of MarketplaceOld
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceOldImplCopyWith<_$MarketplaceOldImpl> get copyWith =>
      __$$MarketplaceOldImplCopyWithImpl<_$MarketplaceOldImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceOldImplToJson(this);
  }
}

abstract class _MarketplaceOld implements MarketplaceOld {
  const factory _MarketplaceOld({
    final String? uid,
    final String? type,
    final String? id,
  }) = _$MarketplaceOldImpl;

  factory _MarketplaceOld.fromJson(Map<String, dynamic> json) =
      _$MarketplaceOldImpl.fromJson;

  @override
  String? get uid;
  @override
  String? get type;
  @override
  String? get id;

  /// Create a copy of MarketplaceOld
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceOldImplCopyWith<_$MarketplaceOldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
