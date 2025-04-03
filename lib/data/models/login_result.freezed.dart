// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return _LoginResult.fromJson(json);
}

/// @nodoc
mixin _$LoginResult {
  String get token => throw _privateConstructorUsedError;
  String get lifeTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'mp_auth_scopes')
  List<MpAuthScope> get mpAuthScopes => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_warehouses')
  List<Warehouse> get activeWarehouses => throw _privateConstructorUsedError;

  /// Serializes this LoginResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
    LoginResult value,
    $Res Function(LoginResult) then,
  ) = _$LoginResultCopyWithImpl<$Res, LoginResult>;
  @useResult
  $Res call({
    String token,
    String lifeTime,
    @JsonKey(name: 'refresh_token') String refreshToken,
    @JsonKey(name: 'mp_auth_scopes') List<MpAuthScope> mpAuthScopes,
    @JsonKey(name: 'active_warehouses') List<Warehouse> activeWarehouses,
  });
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? lifeTime = null,
    Object? refreshToken = null,
    Object? mpAuthScopes = null,
    Object? activeWarehouses = null,
  }) {
    return _then(
      _value.copyWith(
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            lifeTime:
                null == lifeTime
                    ? _value.lifeTime
                    : lifeTime // ignore: cast_nullable_to_non_nullable
                        as String,
            refreshToken:
                null == refreshToken
                    ? _value.refreshToken
                    : refreshToken // ignore: cast_nullable_to_non_nullable
                        as String,
            mpAuthScopes:
                null == mpAuthScopes
                    ? _value.mpAuthScopes
                    : mpAuthScopes // ignore: cast_nullable_to_non_nullable
                        as List<MpAuthScope>,
            activeWarehouses:
                null == activeWarehouses
                    ? _value.activeWarehouses
                    : activeWarehouses // ignore: cast_nullable_to_non_nullable
                        as List<Warehouse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginResultImplCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$LoginResultImplCopyWith(
    _$LoginResultImpl value,
    $Res Function(_$LoginResultImpl) then,
  ) = __$$LoginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String token,
    String lifeTime,
    @JsonKey(name: 'refresh_token') String refreshToken,
    @JsonKey(name: 'mp_auth_scopes') List<MpAuthScope> mpAuthScopes,
    @JsonKey(name: 'active_warehouses') List<Warehouse> activeWarehouses,
  });
}

/// @nodoc
class __$$LoginResultImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginResultImpl>
    implements _$$LoginResultImplCopyWith<$Res> {
  __$$LoginResultImplCopyWithImpl(
    _$LoginResultImpl _value,
    $Res Function(_$LoginResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? lifeTime = null,
    Object? refreshToken = null,
    Object? mpAuthScopes = null,
    Object? activeWarehouses = null,
  }) {
    return _then(
      _$LoginResultImpl(
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        lifeTime:
            null == lifeTime
                ? _value.lifeTime
                : lifeTime // ignore: cast_nullable_to_non_nullable
                    as String,
        refreshToken:
            null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                    as String,
        mpAuthScopes:
            null == mpAuthScopes
                ? _value._mpAuthScopes
                : mpAuthScopes // ignore: cast_nullable_to_non_nullable
                    as List<MpAuthScope>,
        activeWarehouses:
            null == activeWarehouses
                ? _value._activeWarehouses
                : activeWarehouses // ignore: cast_nullable_to_non_nullable
                    as List<Warehouse>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultImpl implements _LoginResult {
  const _$LoginResultImpl({
    required this.token,
    required this.lifeTime,
    @JsonKey(name: 'refresh_token') required this.refreshToken,
    @JsonKey(name: 'mp_auth_scopes')
    required final List<MpAuthScope> mpAuthScopes,
    @JsonKey(name: 'active_warehouses')
    required final List<Warehouse> activeWarehouses,
  }) : _mpAuthScopes = mpAuthScopes,
       _activeWarehouses = activeWarehouses;

  factory _$LoginResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultImplFromJson(json);

  @override
  final String token;
  @override
  final String lifeTime;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  final List<MpAuthScope> _mpAuthScopes;
  @override
  @JsonKey(name: 'mp_auth_scopes')
  List<MpAuthScope> get mpAuthScopes {
    if (_mpAuthScopes is EqualUnmodifiableListView) return _mpAuthScopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mpAuthScopes);
  }

  final List<Warehouse> _activeWarehouses;
  @override
  @JsonKey(name: 'active_warehouses')
  List<Warehouse> get activeWarehouses {
    if (_activeWarehouses is EqualUnmodifiableListView)
      return _activeWarehouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeWarehouses);
  }

  @override
  String toString() {
    return 'LoginResult(token: $token, lifeTime: $lifeTime, refreshToken: $refreshToken, mpAuthScopes: $mpAuthScopes, activeWarehouses: $activeWarehouses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.lifeTime, lifeTime) ||
                other.lifeTime == lifeTime) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            const DeepCollectionEquality().equals(
              other._mpAuthScopes,
              _mpAuthScopes,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeWarehouses,
              _activeWarehouses,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    token,
    lifeTime,
    refreshToken,
    const DeepCollectionEquality().hash(_mpAuthScopes),
    const DeepCollectionEquality().hash(_activeWarehouses),
  );

  /// Create a copy of LoginResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      __$$LoginResultImplCopyWithImpl<_$LoginResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultImplToJson(this);
  }
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult({
    required final String token,
    required final String lifeTime,
    @JsonKey(name: 'refresh_token') required final String refreshToken,
    @JsonKey(name: 'mp_auth_scopes')
    required final List<MpAuthScope> mpAuthScopes,
    @JsonKey(name: 'active_warehouses')
    required final List<Warehouse> activeWarehouses,
  }) = _$LoginResultImpl;

  factory _LoginResult.fromJson(Map<String, dynamic> json) =
      _$LoginResultImpl.fromJson;

  @override
  String get token;
  @override
  String get lifeTime;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'mp_auth_scopes')
  List<MpAuthScope> get mpAuthScopes;
  @override
  @JsonKey(name: 'active_warehouses')
  List<Warehouse> get activeWarehouses;

  /// Create a copy of LoginResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
