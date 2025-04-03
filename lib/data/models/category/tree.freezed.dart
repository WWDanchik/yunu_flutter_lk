// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Tree _$TreeFromJson(Map<String, dynamic> json) {
  return _Tree.fromJson(json);
}

/// @nodoc
mixin _$Tree {
  List<Category> get tree => throw _privateConstructorUsedError;

  /// Serializes this Tree to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tree
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TreeCopyWith<Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeCopyWith<$Res> {
  factory $TreeCopyWith(Tree value, $Res Function(Tree) then) =
      _$TreeCopyWithImpl<$Res, Tree>;
  @useResult
  $Res call({List<Category> tree});
}

/// @nodoc
class _$TreeCopyWithImpl<$Res, $Val extends Tree>
    implements $TreeCopyWith<$Res> {
  _$TreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tree
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tree = null}) {
    return _then(
      _value.copyWith(
            tree:
                null == tree
                    ? _value.tree
                    : tree // ignore: cast_nullable_to_non_nullable
                        as List<Category>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TreeImplCopyWith<$Res> implements $TreeCopyWith<$Res> {
  factory _$$TreeImplCopyWith(
    _$TreeImpl value,
    $Res Function(_$TreeImpl) then,
  ) = __$$TreeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> tree});
}

/// @nodoc
class __$$TreeImplCopyWithImpl<$Res>
    extends _$TreeCopyWithImpl<$Res, _$TreeImpl>
    implements _$$TreeImplCopyWith<$Res> {
  __$$TreeImplCopyWithImpl(_$TreeImpl _value, $Res Function(_$TreeImpl) _then)
    : super(_value, _then);

  /// Create a copy of Tree
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tree = null}) {
    return _then(
      _$TreeImpl(
        tree:
            null == tree
                ? _value._tree
                : tree // ignore: cast_nullable_to_non_nullable
                    as List<Category>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeImpl implements _Tree {
  const _$TreeImpl({required final List<Category> tree}) : _tree = tree;

  factory _$TreeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeImplFromJson(json);

  final List<Category> _tree;
  @override
  List<Category> get tree {
    if (_tree is EqualUnmodifiableListView) return _tree;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tree);
  }

  @override
  String toString() {
    return 'Tree(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeImpl &&
            const DeepCollectionEquality().equals(other._tree, _tree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tree));

  /// Create a copy of Tree
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      __$$TreeImplCopyWithImpl<_$TreeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeImplToJson(this);
  }
}

abstract class _Tree implements Tree {
  const factory _Tree({required final List<Category> tree}) = _$TreeImpl;

  factory _Tree.fromJson(Map<String, dynamic> json) = _$TreeImpl.fromJson;

  @override
  List<Category> get tree;

  /// Create a copy of Tree
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TreeImplCopyWith<_$TreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
