// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_sku_relations_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MarketplaceSkuRelationsResult _$MarketplaceSkuRelationsResultFromJson(
  Map<String, dynamic> json,
) {
  return _MarketplaceSkuRelationsResult.fromJson(json);
}

/// @nodoc
mixin _$MarketplaceSkuRelationsResult {
  List<Article> get articles => throw _privateConstructorUsedError;

  /// Serializes this MarketplaceSkuRelationsResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketplaceSkuRelationsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketplaceSkuRelationsResultCopyWith<MarketplaceSkuRelationsResult>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceSkuRelationsResultCopyWith<$Res> {
  factory $MarketplaceSkuRelationsResultCopyWith(
    MarketplaceSkuRelationsResult value,
    $Res Function(MarketplaceSkuRelationsResult) then,
  ) =
      _$MarketplaceSkuRelationsResultCopyWithImpl<
        $Res,
        MarketplaceSkuRelationsResult
      >;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class _$MarketplaceSkuRelationsResultCopyWithImpl<
  $Res,
  $Val extends MarketplaceSkuRelationsResult
>
    implements $MarketplaceSkuRelationsResultCopyWith<$Res> {
  _$MarketplaceSkuRelationsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketplaceSkuRelationsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? articles = null}) {
    return _then(
      _value.copyWith(
            articles:
                null == articles
                    ? _value.articles
                    : articles // ignore: cast_nullable_to_non_nullable
                        as List<Article>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarketplaceSkuRelationsResultImplCopyWith<$Res>
    implements $MarketplaceSkuRelationsResultCopyWith<$Res> {
  factory _$$MarketplaceSkuRelationsResultImplCopyWith(
    _$MarketplaceSkuRelationsResultImpl value,
    $Res Function(_$MarketplaceSkuRelationsResultImpl) then,
  ) = __$$MarketplaceSkuRelationsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$MarketplaceSkuRelationsResultImplCopyWithImpl<$Res>
    extends
        _$MarketplaceSkuRelationsResultCopyWithImpl<
          $Res,
          _$MarketplaceSkuRelationsResultImpl
        >
    implements _$$MarketplaceSkuRelationsResultImplCopyWith<$Res> {
  __$$MarketplaceSkuRelationsResultImplCopyWithImpl(
    _$MarketplaceSkuRelationsResultImpl _value,
    $Res Function(_$MarketplaceSkuRelationsResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarketplaceSkuRelationsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? articles = null}) {
    return _then(
      _$MarketplaceSkuRelationsResultImpl(
        articles:
            null == articles
                ? _value._articles
                : articles // ignore: cast_nullable_to_non_nullable
                    as List<Article>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplaceSkuRelationsResultImpl
    implements _MarketplaceSkuRelationsResult {
  _$MarketplaceSkuRelationsResultImpl({required final List<Article> articles})
    : _articles = articles;

  factory _$MarketplaceSkuRelationsResultImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MarketplaceSkuRelationsResultImplFromJson(json);

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'MarketplaceSkuRelationsResult(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceSkuRelationsResultImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of MarketplaceSkuRelationsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketplaceSkuRelationsResultImplCopyWith<
    _$MarketplaceSkuRelationsResultImpl
  >
  get copyWith => __$$MarketplaceSkuRelationsResultImplCopyWithImpl<
    _$MarketplaceSkuRelationsResultImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketplaceSkuRelationsResultImplToJson(this);
  }
}

abstract class _MarketplaceSkuRelationsResult
    implements MarketplaceSkuRelationsResult {
  factory _MarketplaceSkuRelationsResult({
    required final List<Article> articles,
  }) = _$MarketplaceSkuRelationsResultImpl;

  factory _MarketplaceSkuRelationsResult.fromJson(Map<String, dynamic> json) =
      _$MarketplaceSkuRelationsResultImpl.fromJson;

  @override
  List<Article> get articles;

  /// Create a copy of MarketplaceSkuRelationsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceSkuRelationsResultImplCopyWith<
    _$MarketplaceSkuRelationsResultImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get article => throw _privateConstructorUsedError;
  List<Marketplace> get marketplaces => throw _privateConstructorUsedError;

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
  $Res call({String article, List<Marketplace> marketplaces});
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
  $Res call({Object? article = null, Object? marketplaces = null}) {
    return _then(
      _value.copyWith(
            article:
                null == article
                    ? _value.article
                    : article // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
    _$ArticleImpl value,
    $Res Function(_$ArticleImpl) then,
  ) = __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String article, List<Marketplace> marketplaces});
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
  $Res call({Object? article = null, Object? marketplaces = null}) {
    return _then(
      _$ArticleImpl(
        article:
            null == article
                ? _value.article
                : article // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$ArticleImpl implements _Article {
  _$ArticleImpl({
    required this.article,
    required final List<Marketplace> marketplaces,
  }) : _marketplaces = marketplaces;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final String article;
  final List<Marketplace> _marketplaces;
  @override
  List<Marketplace> get marketplaces {
    if (_marketplaces is EqualUnmodifiableListView) return _marketplaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketplaces);
  }

  @override
  String toString() {
    return 'Article(article: $article, marketplaces: $marketplaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.article, article) || other.article == article) &&
            const DeepCollectionEquality().equals(
              other._marketplaces,
              _marketplaces,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    article,
    const DeepCollectionEquality().hash(_marketplaces),
  );

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
  factory _Article({
    required final String article,
    required final List<Marketplace> marketplaces,
  }) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  String get article;
  @override
  List<Marketplace> get marketplaces;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Marketplace _$MarketplaceFromJson(Map<String, dynamic> json) {
  return _Marketplace.fromJson(json);
}

/// @nodoc
mixin _$Marketplace {
  @JsonKey(name: 'marketplace_name')
  String get name => throw _privateConstructorUsedError;
  List<Cabinet> get cabinets => throw _privateConstructorUsedError;

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
  $Res call({
    @JsonKey(name: 'marketplace_name') String name,
    List<Cabinet> cabinets,
  });
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
  $Res call({Object? name = null, Object? cabinets = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            cabinets:
                null == cabinets
                    ? _value.cabinets
                    : cabinets // ignore: cast_nullable_to_non_nullable
                        as List<Cabinet>,
          )
          as $Val,
    );
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
  $Res call({
    @JsonKey(name: 'marketplace_name') String name,
    List<Cabinet> cabinets,
  });
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
  $Res call({Object? name = null, Object? cabinets = null}) {
    return _then(
      _$MarketplaceImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        cabinets:
            null == cabinets
                ? _value._cabinets
                : cabinets // ignore: cast_nullable_to_non_nullable
                    as List<Cabinet>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketplaceImpl implements _Marketplace {
  _$MarketplaceImpl({
    @JsonKey(name: 'marketplace_name') required this.name,
    required final List<Cabinet> cabinets,
  }) : _cabinets = cabinets;

  factory _$MarketplaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketplaceImplFromJson(json);

  @override
  @JsonKey(name: 'marketplace_name')
  final String name;
  final List<Cabinet> _cabinets;
  @override
  List<Cabinet> get cabinets {
    if (_cabinets is EqualUnmodifiableListView) return _cabinets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cabinets);
  }

  @override
  String toString() {
    return 'Marketplace(name: $name, cabinets: $cabinets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketplaceImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cabinets, _cabinets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    const DeepCollectionEquality().hash(_cabinets),
  );

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
  factory _Marketplace({
    @JsonKey(name: 'marketplace_name') required final String name,
    required final List<Cabinet> cabinets,
  }) = _$MarketplaceImpl;

  factory _Marketplace.fromJson(Map<String, dynamic> json) =
      _$MarketplaceImpl.fromJson;

  @override
  @JsonKey(name: 'marketplace_name')
  String get name;
  @override
  List<Cabinet> get cabinets;

  /// Create a copy of Marketplace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketplaceImplCopyWith<_$MarketplaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cabinet _$CabinetFromJson(Map<String, dynamic> json) {
  return _Cabinet.fromJson(json);
}

/// @nodoc
mixin _$Cabinet {
  @JsonKey(name: 'cabinet_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketplace_sku')
  String? get marketplaceSku => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff => throw _privateConstructorUsedError;
  List<Relation> get relations => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'cabinet_name') String name,
    @JsonKey(name: 'marketplace_sku') String? marketplaceSku,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    List<Relation> relations,
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
    Object? name = null,
    Object? marketplaceSku = freezed,
    Object? isDimensionsDiff = null,
    Object? relations = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            marketplaceSku:
                freezed == marketplaceSku
                    ? _value.marketplaceSku
                    : marketplaceSku // ignore: cast_nullable_to_non_nullable
                        as String?,
            isDimensionsDiff:
                null == isDimensionsDiff
                    ? _value.isDimensionsDiff
                    : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                        as bool,
            relations:
                null == relations
                    ? _value.relations
                    : relations // ignore: cast_nullable_to_non_nullable
                        as List<Relation>,
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
    @JsonKey(name: 'cabinet_name') String name,
    @JsonKey(name: 'marketplace_sku') String? marketplaceSku,
    @JsonKey(name: 'is_dimensions_diff') bool isDimensionsDiff,
    List<Relation> relations,
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
    Object? name = null,
    Object? marketplaceSku = freezed,
    Object? isDimensionsDiff = null,
    Object? relations = null,
  }) {
    return _then(
      _$CabinetImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        marketplaceSku:
            freezed == marketplaceSku
                ? _value.marketplaceSku
                : marketplaceSku // ignore: cast_nullable_to_non_nullable
                    as String?,
        isDimensionsDiff:
            null == isDimensionsDiff
                ? _value.isDimensionsDiff
                : isDimensionsDiff // ignore: cast_nullable_to_non_nullable
                    as bool,
        relations:
            null == relations
                ? _value._relations
                : relations // ignore: cast_nullable_to_non_nullable
                    as List<Relation>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CabinetImpl implements _Cabinet {
  _$CabinetImpl({
    @JsonKey(name: 'cabinet_name') required this.name,
    @JsonKey(name: 'marketplace_sku') this.marketplaceSku,
    @JsonKey(name: 'is_dimensions_diff') required this.isDimensionsDiff,
    required final List<Relation> relations,
  }) : _relations = relations;

  factory _$CabinetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CabinetImplFromJson(json);

  @override
  @JsonKey(name: 'cabinet_name')
  final String name;
  @override
  @JsonKey(name: 'marketplace_sku')
  final String? marketplaceSku;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  final bool isDimensionsDiff;
  final List<Relation> _relations;
  @override
  List<Relation> get relations {
    if (_relations is EqualUnmodifiableListView) return _relations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relations);
  }

  @override
  String toString() {
    return 'Cabinet(name: $name, marketplaceSku: $marketplaceSku, isDimensionsDiff: $isDimensionsDiff, relations: $relations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CabinetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.marketplaceSku, marketplaceSku) ||
                other.marketplaceSku == marketplaceSku) &&
            (identical(other.isDimensionsDiff, isDimensionsDiff) ||
                other.isDimensionsDiff == isDimensionsDiff) &&
            const DeepCollectionEquality().equals(
              other._relations,
              _relations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    marketplaceSku,
    isDimensionsDiff,
    const DeepCollectionEquality().hash(_relations),
  );

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
  factory _Cabinet({
    @JsonKey(name: 'cabinet_name') required final String name,
    @JsonKey(name: 'marketplace_sku') final String? marketplaceSku,
    @JsonKey(name: 'is_dimensions_diff') required final bool isDimensionsDiff,
    required final List<Relation> relations,
  }) = _$CabinetImpl;

  factory _Cabinet.fromJson(Map<String, dynamic> json) = _$CabinetImpl.fromJson;

  @override
  @JsonKey(name: 'cabinet_name')
  String get name;
  @override
  @JsonKey(name: 'marketplace_sku')
  String? get marketplaceSku;
  @override
  @JsonKey(name: 'is_dimensions_diff')
  bool get isDimensionsDiff;
  @override
  List<Relation> get relations;

  /// Create a copy of Cabinet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CabinetImplCopyWith<_$CabinetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Relation _$RelationFromJson(Map<String, dynamic> json) {
  return _Relation.fromJson(json);
}

/// @nodoc
mixin _$Relation {
  @JsonKey(name: 'delivery_type_name')
  String get deliveryTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_related')
  bool get isRelated => throw _privateConstructorUsedError;

  /// Serializes this Relation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Relation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelationCopyWith<Relation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationCopyWith<$Res> {
  factory $RelationCopyWith(Relation value, $Res Function(Relation) then) =
      _$RelationCopyWithImpl<$Res, Relation>;
  @useResult
  $Res call({
    @JsonKey(name: 'delivery_type_name') String deliveryTypeName,
    @JsonKey(name: 'is_related') bool isRelated,
  });
}

/// @nodoc
class _$RelationCopyWithImpl<$Res, $Val extends Relation>
    implements $RelationCopyWith<$Res> {
  _$RelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Relation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deliveryTypeName = null, Object? isRelated = null}) {
    return _then(
      _value.copyWith(
            deliveryTypeName:
                null == deliveryTypeName
                    ? _value.deliveryTypeName
                    : deliveryTypeName // ignore: cast_nullable_to_non_nullable
                        as String,
            isRelated:
                null == isRelated
                    ? _value.isRelated
                    : isRelated // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RelationImplCopyWith<$Res>
    implements $RelationCopyWith<$Res> {
  factory _$$RelationImplCopyWith(
    _$RelationImpl value,
    $Res Function(_$RelationImpl) then,
  ) = __$$RelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'delivery_type_name') String deliveryTypeName,
    @JsonKey(name: 'is_related') bool isRelated,
  });
}

/// @nodoc
class __$$RelationImplCopyWithImpl<$Res>
    extends _$RelationCopyWithImpl<$Res, _$RelationImpl>
    implements _$$RelationImplCopyWith<$Res> {
  __$$RelationImplCopyWithImpl(
    _$RelationImpl _value,
    $Res Function(_$RelationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Relation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? deliveryTypeName = null, Object? isRelated = null}) {
    return _then(
      _$RelationImpl(
        deliveryTypeName:
            null == deliveryTypeName
                ? _value.deliveryTypeName
                : deliveryTypeName // ignore: cast_nullable_to_non_nullable
                    as String,
        isRelated:
            null == isRelated
                ? _value.isRelated
                : isRelated // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationImpl implements _Relation {
  _$RelationImpl({
    @JsonKey(name: 'delivery_type_name') required this.deliveryTypeName,
    @JsonKey(name: 'is_related') required this.isRelated,
  });

  factory _$RelationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationImplFromJson(json);

  @override
  @JsonKey(name: 'delivery_type_name')
  final String deliveryTypeName;
  @override
  @JsonKey(name: 'is_related')
  final bool isRelated;

  @override
  String toString() {
    return 'Relation(deliveryTypeName: $deliveryTypeName, isRelated: $isRelated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationImpl &&
            (identical(other.deliveryTypeName, deliveryTypeName) ||
                other.deliveryTypeName == deliveryTypeName) &&
            (identical(other.isRelated, isRelated) ||
                other.isRelated == isRelated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deliveryTypeName, isRelated);

  /// Create a copy of Relation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      __$$RelationImplCopyWithImpl<_$RelationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationImplToJson(this);
  }
}

abstract class _Relation implements Relation {
  factory _Relation({
    @JsonKey(name: 'delivery_type_name') required final String deliveryTypeName,
    @JsonKey(name: 'is_related') required final bool isRelated,
  }) = _$RelationImpl;

  factory _Relation.fromJson(Map<String, dynamic> json) =
      _$RelationImpl.fromJson;

  @override
  @JsonKey(name: 'delivery_type_name')
  String get deliveryTypeName;
  @override
  @JsonKey(name: 'is_related')
  bool get isRelated;

  /// Create a copy of Relation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationImplCopyWith<_$RelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
