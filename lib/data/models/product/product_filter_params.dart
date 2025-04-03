class _Undefined {
  const _Undefined();
}

const _undefined = _Undefined();

class ProductFilterParams {
  final String? lackLink;
  final int? category;
  final String? name;
  final bool? isNotEmptyStock;
  final bool? isWithHidden;
  final bool? isOnlyWithDiffDimensions;

  const ProductFilterParams({
    this.lackLink,
    this.category,
    this.name,
    this.isNotEmptyStock,
    this.isWithHidden,
    this.isOnlyWithDiffDimensions,
  });

  ProductFilterParams copyWith({
    Object? lackLink = _undefined,
    Object? category = _undefined,
    Object? name = _undefined,
    Object? isNotEmptyStock = _undefined,
    Object? isWithHidden = _undefined,
    Object? isOnlyWithDiffDimensions = _undefined,
  }) {
    return ProductFilterParams(
      lackLink: lackLink == _undefined ? this.lackLink : lackLink as String?,
      category: category == _undefined ? this.category : category as int?,
      name: name == _undefined ? this.name : name as String?,
      isNotEmptyStock:
          isNotEmptyStock == _undefined
              ? this.isNotEmptyStock
              : isNotEmptyStock as bool?,
      isWithHidden:
          isWithHidden == _undefined
              ? this.isWithHidden
              : isWithHidden as bool?,
      isOnlyWithDiffDimensions:
          isOnlyWithDiffDimensions == _undefined
              ? this.isOnlyWithDiffDimensions
              : isOnlyWithDiffDimensions as bool?,
    );
  }

  Map<String, String> toQueryParams() {
    final params = <String, String>{};

    void addParam(String key, dynamic value) {
      if (value == null) return;

      final paramKey = _camelToSnake(key);
      final paramValue = value is bool ? (value ? '1' : '0') : value.toString();

      params[paramKey] = paramValue;
    }

    addParam('lackLink', lackLink);
    addParam('category', category);
    addParam('name', name);
    addParam('isNotEmptyStock', isNotEmptyStock);
    addParam('isOnlyWithDiffDimensions', isOnlyWithDiffDimensions);
    addParam('isWithHidden', isWithHidden);

    return params;
  }

  String _camelToSnake(String str) {
    return str
        .replaceAllMapped(
          RegExp(r'(?<=[a-z])[A-Z]'),
          (m) => '_${m.group(0)!.toLowerCase()}',
        )
        .toLowerCase();
  }
}
