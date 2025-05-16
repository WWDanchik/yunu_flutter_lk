// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listHash() => r'141e17809168a43a2b5d93e89c0f7343c9ef4369';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [list].
@ProviderFor(list)
const listProvider = ListFamily();

/// See also [list].
class ListFamily extends Family<AsyncValue<ProductList>> {
  /// See also [list].
  const ListFamily();

  /// See also [list].
  ListProvider call(int page, int perPage, ProductFilterParams? filter) {
    return ListProvider(page, perPage, filter);
  }

  @override
  ListProvider getProviderOverride(covariant ListProvider provider) {
    return call(provider.page, provider.perPage, provider.filter);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'listProvider';
}

/// See also [list].
class ListProvider extends AutoDisposeFutureProvider<ProductList> {
  /// See also [list].
  ListProvider(int page, int perPage, ProductFilterParams? filter)
    : this._internal(
        (ref) => list(ref as ListRef, page, perPage, filter),
        from: listProvider,
        name: r'listProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$listHash,
        dependencies: ListFamily._dependencies,
        allTransitiveDependencies: ListFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
        filter: filter,
      );

  ListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.perPage,
    required this.filter,
  }) : super.internal();

  final int page;
  final int perPage;
  final ProductFilterParams? filter;

  @override
  Override overrideWith(
    FutureOr<ProductList> Function(ListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListProvider._internal(
        (ref) => create(ref as ListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        perPage: perPage,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductList> createElement() {
    return _ListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListProvider &&
        other.page == page &&
        other.perPage == perPage &&
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListRef on AutoDisposeFutureProviderRef<ProductList> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `filter` of this provider.
  ProductFilterParams? get filter;
}

class _ListProviderElement extends AutoDisposeFutureProviderElement<ProductList>
    with ListRef {
  _ListProviderElement(super.provider);

  @override
  int get page => (origin as ListProvider).page;
  @override
  int get perPage => (origin as ListProvider).perPage;
  @override
  ProductFilterParams? get filter => (origin as ListProvider).filter;
}

String _$viewUpdateStocksSettingsHash() =>
    r'2601accdc84bf9e6d7bbde16e6dac88e975a93f2';

/// See also [viewUpdateStocksSettings].
@ProviderFor(viewUpdateStocksSettings)
const viewUpdateStocksSettingsProvider = ViewUpdateStocksSettingsFamily();

/// See also [viewUpdateStocksSettings].
class ViewUpdateStocksSettingsFamily
    extends Family<AsyncValue<ApiResponse<ProductStockSettings>>> {
  /// See also [viewUpdateStocksSettings].
  const ViewUpdateStocksSettingsFamily();

  /// See also [viewUpdateStocksSettings].
  ViewUpdateStocksSettingsProvider call(int productId) {
    return ViewUpdateStocksSettingsProvider(productId);
  }

  @override
  ViewUpdateStocksSettingsProvider getProviderOverride(
    covariant ViewUpdateStocksSettingsProvider provider,
  ) {
    return call(provider.productId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'viewUpdateStocksSettingsProvider';
}

/// See also [viewUpdateStocksSettings].
class ViewUpdateStocksSettingsProvider
    extends AutoDisposeFutureProvider<ApiResponse<ProductStockSettings>> {
  /// See also [viewUpdateStocksSettings].
  ViewUpdateStocksSettingsProvider(int productId)
    : this._internal(
        (ref) => viewUpdateStocksSettings(
          ref as ViewUpdateStocksSettingsRef,
          productId,
        ),
        from: viewUpdateStocksSettingsProvider,
        name: r'viewUpdateStocksSettingsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$viewUpdateStocksSettingsHash,
        dependencies: ViewUpdateStocksSettingsFamily._dependencies,
        allTransitiveDependencies:
            ViewUpdateStocksSettingsFamily._allTransitiveDependencies,
        productId: productId,
      );

  ViewUpdateStocksSettingsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<ProductStockSettings>> Function(
      ViewUpdateStocksSettingsRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ViewUpdateStocksSettingsProvider._internal(
        (ref) => create(ref as ViewUpdateStocksSettingsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<ProductStockSettings>>
  createElement() {
    return _ViewUpdateStocksSettingsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ViewUpdateStocksSettingsProvider &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ViewUpdateStocksSettingsRef
    on AutoDisposeFutureProviderRef<ApiResponse<ProductStockSettings>> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _ViewUpdateStocksSettingsProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<ProductStockSettings>>
    with ViewUpdateStocksSettingsRef {
  _ViewUpdateStocksSettingsProviderElement(super.provider);

  @override
  int get productId => (origin as ViewUpdateStocksSettingsProvider).productId;
}

String _$detailHash() => r'adbc0aa8810eadf59bb2dab7239e95b1df300e30';

/// See also [detail].
@ProviderFor(detail)
const detailProvider = DetailFamily();

/// See also [detail].
class DetailFamily extends Family<AsyncValue<ProductDetail>> {
  /// See also [detail].
  const DetailFamily();

  /// See also [detail].
  DetailProvider call(int productId) {
    return DetailProvider(productId);
  }

  @override
  DetailProvider getProviderOverride(covariant DetailProvider provider) {
    return call(provider.productId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailProvider';
}

/// See also [detail].
class DetailProvider extends AutoDisposeFutureProvider<ProductDetail> {
  /// See also [detail].
  DetailProvider(int productId)
    : this._internal(
        (ref) => detail(ref as DetailRef, productId),
        from: detailProvider,
        name: r'detailProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$detailHash,
        dependencies: DetailFamily._dependencies,
        allTransitiveDependencies: DetailFamily._allTransitiveDependencies,
        productId: productId,
      );

  DetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  Override overrideWith(
    FutureOr<ProductDetail> Function(DetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailProvider._internal(
        (ref) => create(ref as DetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductDetail> createElement() {
    return _DetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailRef on AutoDisposeFutureProviderRef<ProductDetail> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _DetailProviderElement
    extends AutoDisposeFutureProviderElement<ProductDetail>
    with DetailRef {
  _DetailProviderElement(super.provider);

  @override
  int get productId => (origin as DetailProvider).productId;
}

String _$marketplaceSkuRelationsResultHash() =>
    r'0525d7c9e3d9a0b60bb98e2c7474840b8a4af5b5';

/// See also [marketplaceSkuRelationsResult].
@ProviderFor(marketplaceSkuRelationsResult)
const marketplaceSkuRelationsResultProvider =
    MarketplaceSkuRelationsResultFamily();

/// See also [marketplaceSkuRelationsResult].
class MarketplaceSkuRelationsResultFamily
    extends Family<AsyncValue<ApiResponse<MarketplaceSkuRelationsResult>>> {
  /// See also [marketplaceSkuRelationsResult].
  const MarketplaceSkuRelationsResultFamily();

  /// See also [marketplaceSkuRelationsResult].
  MarketplaceSkuRelationsResultProvider call(int productId) {
    return MarketplaceSkuRelationsResultProvider(productId);
  }

  @override
  MarketplaceSkuRelationsResultProvider getProviderOverride(
    covariant MarketplaceSkuRelationsResultProvider provider,
  ) {
    return call(provider.productId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'marketplaceSkuRelationsResultProvider';
}

/// See also [marketplaceSkuRelationsResult].
class MarketplaceSkuRelationsResultProvider
    extends
        AutoDisposeFutureProvider<ApiResponse<MarketplaceSkuRelationsResult>> {
  /// See also [marketplaceSkuRelationsResult].
  MarketplaceSkuRelationsResultProvider(int productId)
    : this._internal(
        (ref) => marketplaceSkuRelationsResult(
          ref as MarketplaceSkuRelationsResultRef,
          productId,
        ),
        from: marketplaceSkuRelationsResultProvider,
        name: r'marketplaceSkuRelationsResultProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$marketplaceSkuRelationsResultHash,
        dependencies: MarketplaceSkuRelationsResultFamily._dependencies,
        allTransitiveDependencies:
            MarketplaceSkuRelationsResultFamily._allTransitiveDependencies,
        productId: productId,
      );

  MarketplaceSkuRelationsResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<MarketplaceSkuRelationsResult>> Function(
      MarketplaceSkuRelationsResultRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarketplaceSkuRelationsResultProvider._internal(
        (ref) => create(ref as MarketplaceSkuRelationsResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<MarketplaceSkuRelationsResult>>
  createElement() {
    return _MarketplaceSkuRelationsResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarketplaceSkuRelationsResultProvider &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MarketplaceSkuRelationsResultRef
    on
        AutoDisposeFutureProviderRef<
          ApiResponse<MarketplaceSkuRelationsResult>
        > {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _MarketplaceSkuRelationsResultProviderElement
    extends
        AutoDisposeFutureProviderElement<
          ApiResponse<MarketplaceSkuRelationsResult>
        >
    with MarketplaceSkuRelationsResultRef {
  _MarketplaceSkuRelationsResultProviderElement(super.provider);

  @override
  int get productId =>
      (origin as MarketplaceSkuRelationsResultProvider).productId;
}

String _$productDetailControllerHash() =>
    r'e08624f6893d0a9f604d8bab4d231486d8127e3b';

abstract class _$ProductDetailController
    extends BuildlessAutoDisposeAsyncNotifier<ProductDetailState> {
  late final int productId;

  FutureOr<ProductDetailState> build(int productId);
}

/// See also [ProductDetailController].
@ProviderFor(ProductDetailController)
const productDetailControllerProvider = ProductDetailControllerFamily();

/// See also [ProductDetailController].
class ProductDetailControllerFamily
    extends Family<AsyncValue<ProductDetailState>> {
  /// See also [ProductDetailController].
  const ProductDetailControllerFamily();

  /// See also [ProductDetailController].
  ProductDetailControllerProvider call(int productId) {
    return ProductDetailControllerProvider(productId);
  }

  @override
  ProductDetailControllerProvider getProviderOverride(
    covariant ProductDetailControllerProvider provider,
  ) {
    return call(provider.productId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailControllerProvider';
}

/// See also [ProductDetailController].
class ProductDetailControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ProductDetailController,
          ProductDetailState
        > {
  /// See also [ProductDetailController].
  ProductDetailControllerProvider(int productId)
    : this._internal(
        () => ProductDetailController()..productId = productId,
        from: productDetailControllerProvider,
        name: r'productDetailControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$productDetailControllerHash,
        dependencies: ProductDetailControllerFamily._dependencies,
        allTransitiveDependencies:
            ProductDetailControllerFamily._allTransitiveDependencies,
        productId: productId,
      );

  ProductDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  FutureOr<ProductDetailState> runNotifierBuild(
    covariant ProductDetailController notifier,
  ) {
    return notifier.build(productId);
  }

  @override
  Override overrideWith(ProductDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailControllerProvider._internal(
        () => create()..productId = productId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ProductDetailController,
    ProductDetailState
  >
  createElement() {
    return _ProductDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailControllerProvider &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ProductDetailState> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _ProductDetailControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ProductDetailController,
          ProductDetailState
        >
    with ProductDetailControllerRef {
  _ProductDetailControllerProviderElement(super.provider);

  @override
  int get productId => (origin as ProductDetailControllerProvider).productId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
