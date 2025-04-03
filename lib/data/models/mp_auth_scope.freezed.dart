// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mp_auth_scope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MpAuthScope _$MpAuthScopeFromJson(Map<String, dynamic> json) {
  return _MpAuthScope.fromJson(json);
}

/// @nodoc
mixin _$MpAuthScope {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this MpAuthScope to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MpAuthScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MpAuthScopeCopyWith<MpAuthScope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpAuthScopeCopyWith<$Res> {
  factory $MpAuthScopeCopyWith(
    MpAuthScope value,
    $Res Function(MpAuthScope) then,
  ) = _$MpAuthScopeCopyWithImpl<$Res, MpAuthScope>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$MpAuthScopeCopyWithImpl<$Res, $Val extends MpAuthScope>
    implements $MpAuthScopeCopyWith<$Res> {
  _$MpAuthScopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MpAuthScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MpAuthScopeImplCopyWith<$Res>
    implements $MpAuthScopeCopyWith<$Res> {
  factory _$$MpAuthScopeImplCopyWith(
    _$MpAuthScopeImpl value,
    $Res Function(_$MpAuthScopeImpl) then,
  ) = __$$MpAuthScopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$MpAuthScopeImplCopyWithImpl<$Res>
    extends _$MpAuthScopeCopyWithImpl<$Res, _$MpAuthScopeImpl>
    implements _$$MpAuthScopeImplCopyWith<$Res> {
  __$$MpAuthScopeImplCopyWithImpl(
    _$MpAuthScopeImpl _value,
    $Res Function(_$MpAuthScopeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MpAuthScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _$MpAuthScopeImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MpAuthScopeImpl implements _MpAuthScope {
  const _$MpAuthScopeImpl({required this.id, required this.title});

  factory _$MpAuthScopeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpAuthScopeImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'MpAuthScope(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpAuthScopeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of MpAuthScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MpAuthScopeImplCopyWith<_$MpAuthScopeImpl> get copyWith =>
      __$$MpAuthScopeImplCopyWithImpl<_$MpAuthScopeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpAuthScopeImplToJson(this);
  }
}

abstract class _MpAuthScope implements MpAuthScope {
  const factory _MpAuthScope({
    required final int id,
    required final String title,
  }) = _$MpAuthScopeImpl;

  factory _MpAuthScope.fromJson(Map<String, dynamic> json) =
      _$MpAuthScopeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of MpAuthScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MpAuthScopeImplCopyWith<_$MpAuthScopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
