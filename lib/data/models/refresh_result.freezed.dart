// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefreshResult _$RefreshResultFromJson(Map<String, dynamic> json) {
  return _RefreshResult.fromJson(json);
}

/// @nodoc
mixin _$RefreshResult {
  String get token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  String get lifeTime => throw _privateConstructorUsedError;

  /// Serializes this RefreshResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshResultCopyWith<RefreshResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshResultCopyWith<$Res> {
  factory $RefreshResultCopyWith(
    RefreshResult value,
    $Res Function(RefreshResult) then,
  ) = _$RefreshResultCopyWithImpl<$Res, RefreshResult>;
  @useResult
  $Res call({String token, String refresh_token, String lifeTime});
}

/// @nodoc
class _$RefreshResultCopyWithImpl<$Res, $Val extends RefreshResult>
    implements $RefreshResultCopyWith<$Res> {
  _$RefreshResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refresh_token = null,
    Object? lifeTime = null,
  }) {
    return _then(
      _value.copyWith(
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            refresh_token:
                null == refresh_token
                    ? _value.refresh_token
                    : refresh_token // ignore: cast_nullable_to_non_nullable
                        as String,
            lifeTime:
                null == lifeTime
                    ? _value.lifeTime
                    : lifeTime // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefreshResultImplCopyWith<$Res>
    implements $RefreshResultCopyWith<$Res> {
  factory _$$RefreshResultImplCopyWith(
    _$RefreshResultImpl value,
    $Res Function(_$RefreshResultImpl) then,
  ) = __$$RefreshResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String refresh_token, String lifeTime});
}

/// @nodoc
class __$$RefreshResultImplCopyWithImpl<$Res>
    extends _$RefreshResultCopyWithImpl<$Res, _$RefreshResultImpl>
    implements _$$RefreshResultImplCopyWith<$Res> {
  __$$RefreshResultImplCopyWithImpl(
    _$RefreshResultImpl _value,
    $Res Function(_$RefreshResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refresh_token = null,
    Object? lifeTime = null,
  }) {
    return _then(
      _$RefreshResultImpl(
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        refresh_token:
            null == refresh_token
                ? _value.refresh_token
                : refresh_token // ignore: cast_nullable_to_non_nullable
                    as String,
        lifeTime:
            null == lifeTime
                ? _value.lifeTime
                : lifeTime // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshResultImpl implements _RefreshResult {
  const _$RefreshResultImpl({
    required this.token,
    required this.refresh_token,
    required this.lifeTime,
  });

  factory _$RefreshResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshResultImplFromJson(json);

  @override
  final String token;
  @override
  final String refresh_token;
  @override
  final String lifeTime;

  @override
  String toString() {
    return 'RefreshResult(token: $token, refresh_token: $refresh_token, lifeTime: $lifeTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshResultImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.lifeTime, lifeTime) ||
                other.lifeTime == lifeTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, refresh_token, lifeTime);

  /// Create a copy of RefreshResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshResultImplCopyWith<_$RefreshResultImpl> get copyWith =>
      __$$RefreshResultImplCopyWithImpl<_$RefreshResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshResultImplToJson(this);
  }
}

abstract class _RefreshResult implements RefreshResult {
  const factory _RefreshResult({
    required final String token,
    required final String refresh_token,
    required final String lifeTime,
  }) = _$RefreshResultImpl;

  factory _RefreshResult.fromJson(Map<String, dynamic> json) =
      _$RefreshResultImpl.fromJson;

  @override
  String get token;
  @override
  String get refresh_token;
  @override
  String get lifeTime;

  /// Create a copy of RefreshResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshResultImplCopyWith<_$RefreshResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
