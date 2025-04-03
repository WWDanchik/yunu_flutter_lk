// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TodayResult _$TodayResultFromJson(Map<String, dynamic> json) {
  return _TodayResult.fromJson(json);
}

/// @nodoc
mixin _$TodayResult {
  Revenue get revenue => throw _privateConstructorUsedError;
  Orders get orders => throw _privateConstructorUsedError;
  Marginality get marginality => throw _privateConstructorUsedError;
  AverageCheck get averageCheck => throw _privateConstructorUsedError;

  /// Serializes this TodayResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayResultCopyWith<TodayResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayResultCopyWith<$Res> {
  factory $TodayResultCopyWith(
    TodayResult value,
    $Res Function(TodayResult) then,
  ) = _$TodayResultCopyWithImpl<$Res, TodayResult>;
  @useResult
  $Res call({
    Revenue revenue,
    Orders orders,
    Marginality marginality,
    AverageCheck averageCheck,
  });

  $RevenueCopyWith<$Res> get revenue;
  $OrdersCopyWith<$Res> get orders;
  $MarginalityCopyWith<$Res> get marginality;
  $AverageCheckCopyWith<$Res> get averageCheck;
}

/// @nodoc
class _$TodayResultCopyWithImpl<$Res, $Val extends TodayResult>
    implements $TodayResultCopyWith<$Res> {
  _$TodayResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = null,
    Object? orders = null,
    Object? marginality = null,
    Object? averageCheck = null,
  }) {
    return _then(
      _value.copyWith(
            revenue:
                null == revenue
                    ? _value.revenue
                    : revenue // ignore: cast_nullable_to_non_nullable
                        as Revenue,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as Orders,
            marginality:
                null == marginality
                    ? _value.marginality
                    : marginality // ignore: cast_nullable_to_non_nullable
                        as Marginality,
            averageCheck:
                null == averageCheck
                    ? _value.averageCheck
                    : averageCheck // ignore: cast_nullable_to_non_nullable
                        as AverageCheck,
          )
          as $Val,
    );
  }

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RevenueCopyWith<$Res> get revenue {
    return $RevenueCopyWith<$Res>(_value.revenue, (value) {
      return _then(_value.copyWith(revenue: value) as $Val);
    });
  }

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrdersCopyWith<$Res> get orders {
    return $OrdersCopyWith<$Res>(_value.orders, (value) {
      return _then(_value.copyWith(orders: value) as $Val);
    });
  }

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarginalityCopyWith<$Res> get marginality {
    return $MarginalityCopyWith<$Res>(_value.marginality, (value) {
      return _then(_value.copyWith(marginality: value) as $Val);
    });
  }

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AverageCheckCopyWith<$Res> get averageCheck {
    return $AverageCheckCopyWith<$Res>(_value.averageCheck, (value) {
      return _then(_value.copyWith(averageCheck: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodayResultImplCopyWith<$Res>
    implements $TodayResultCopyWith<$Res> {
  factory _$$TodayResultImplCopyWith(
    _$TodayResultImpl value,
    $Res Function(_$TodayResultImpl) then,
  ) = __$$TodayResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Revenue revenue,
    Orders orders,
    Marginality marginality,
    AverageCheck averageCheck,
  });

  @override
  $RevenueCopyWith<$Res> get revenue;
  @override
  $OrdersCopyWith<$Res> get orders;
  @override
  $MarginalityCopyWith<$Res> get marginality;
  @override
  $AverageCheckCopyWith<$Res> get averageCheck;
}

/// @nodoc
class __$$TodayResultImplCopyWithImpl<$Res>
    extends _$TodayResultCopyWithImpl<$Res, _$TodayResultImpl>
    implements _$$TodayResultImplCopyWith<$Res> {
  __$$TodayResultImplCopyWithImpl(
    _$TodayResultImpl _value,
    $Res Function(_$TodayResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = null,
    Object? orders = null,
    Object? marginality = null,
    Object? averageCheck = null,
  }) {
    return _then(
      _$TodayResultImpl(
        revenue:
            null == revenue
                ? _value.revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                    as Revenue,
        orders:
            null == orders
                ? _value.orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as Orders,
        marginality:
            null == marginality
                ? _value.marginality
                : marginality // ignore: cast_nullable_to_non_nullable
                    as Marginality,
        averageCheck:
            null == averageCheck
                ? _value.averageCheck
                : averageCheck // ignore: cast_nullable_to_non_nullable
                    as AverageCheck,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayResultImpl implements _TodayResult {
  const _$TodayResultImpl({
    required this.revenue,
    required this.orders,
    required this.marginality,
    required this.averageCheck,
  });

  factory _$TodayResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayResultImplFromJson(json);

  @override
  final Revenue revenue;
  @override
  final Orders orders;
  @override
  final Marginality marginality;
  @override
  final AverageCheck averageCheck;

  @override
  String toString() {
    return 'TodayResult(revenue: $revenue, orders: $orders, marginality: $marginality, averageCheck: $averageCheck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayResultImpl &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.marginality, marginality) ||
                other.marginality == marginality) &&
            (identical(other.averageCheck, averageCheck) ||
                other.averageCheck == averageCheck));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, revenue, orders, marginality, averageCheck);

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayResultImplCopyWith<_$TodayResultImpl> get copyWith =>
      __$$TodayResultImplCopyWithImpl<_$TodayResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayResultImplToJson(this);
  }
}

abstract class _TodayResult implements TodayResult {
  const factory _TodayResult({
    required final Revenue revenue,
    required final Orders orders,
    required final Marginality marginality,
    required final AverageCheck averageCheck,
  }) = _$TodayResultImpl;

  factory _TodayResult.fromJson(Map<String, dynamic> json) =
      _$TodayResultImpl.fromJson;

  @override
  Revenue get revenue;
  @override
  Orders get orders;
  @override
  Marginality get marginality;
  @override
  AverageCheck get averageCheck;

  /// Create a copy of TodayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayResultImplCopyWith<_$TodayResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Revenue _$RevenueFromJson(Map<String, dynamic> json) {
  return _Revenue.fromJson(json);
}

/// @nodoc
mixin _$Revenue {
  int get today => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get yesterday => throw _privateConstructorUsedError;
  int get dinamicMonth => throw _privateConstructorUsedError;
  int get dinamicYesterday => throw _privateConstructorUsedError;

  /// Serializes this Revenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueCopyWith<Revenue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueCopyWith<$Res> {
  factory $RevenueCopyWith(Revenue value, $Res Function(Revenue) then) =
      _$RevenueCopyWithImpl<$Res, Revenue>;
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class _$RevenueCopyWithImpl<$Res, $Val extends Revenue>
    implements $RevenueCopyWith<$Res> {
  _$RevenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _value.copyWith(
            today:
                null == today
                    ? _value.today
                    : today // ignore: cast_nullable_to_non_nullable
                        as int,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as int,
            yesterday:
                null == yesterday
                    ? _value.yesterday
                    : yesterday // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicMonth:
                null == dinamicMonth
                    ? _value.dinamicMonth
                    : dinamicMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicYesterday:
                null == dinamicYesterday
                    ? _value.dinamicYesterday
                    : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RevenueImplCopyWith<$Res> implements $RevenueCopyWith<$Res> {
  factory _$$RevenueImplCopyWith(
    _$RevenueImpl value,
    $Res Function(_$RevenueImpl) then,
  ) = __$$RevenueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class __$$RevenueImplCopyWithImpl<$Res>
    extends _$RevenueCopyWithImpl<$Res, _$RevenueImpl>
    implements _$$RevenueImplCopyWith<$Res> {
  __$$RevenueImplCopyWithImpl(
    _$RevenueImpl _value,
    $Res Function(_$RevenueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _$RevenueImpl(
        today:
            null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                    as int,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as int,
        yesterday:
            null == yesterday
                ? _value.yesterday
                : yesterday // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicMonth:
            null == dinamicMonth
                ? _value.dinamicMonth
                : dinamicMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicYesterday:
            null == dinamicYesterday
                ? _value.dinamicYesterday
                : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueImpl implements _Revenue {
  const _$RevenueImpl({
    required this.today,
    required this.month,
    required this.yesterday,
    required this.dinamicMonth,
    required this.dinamicYesterday,
  });

  factory _$RevenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueImplFromJson(json);

  @override
  final int today;
  @override
  final int month;
  @override
  final int yesterday;
  @override
  final int dinamicMonth;
  @override
  final int dinamicYesterday;

  @override
  String toString() {
    return 'Revenue(today: $today, month: $month, yesterday: $yesterday, dinamicMonth: $dinamicMonth, dinamicYesterday: $dinamicYesterday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.yesterday, yesterday) ||
                other.yesterday == yesterday) &&
            (identical(other.dinamicMonth, dinamicMonth) ||
                other.dinamicMonth == dinamicMonth) &&
            (identical(other.dinamicYesterday, dinamicYesterday) ||
                other.dinamicYesterday == dinamicYesterday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    today,
    month,
    yesterday,
    dinamicMonth,
    dinamicYesterday,
  );

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueImplCopyWith<_$RevenueImpl> get copyWith =>
      __$$RevenueImplCopyWithImpl<_$RevenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueImplToJson(this);
  }
}

abstract class _Revenue implements Revenue {
  const factory _Revenue({
    required final int today,
    required final int month,
    required final int yesterday,
    required final int dinamicMonth,
    required final int dinamicYesterday,
  }) = _$RevenueImpl;

  factory _Revenue.fromJson(Map<String, dynamic> json) = _$RevenueImpl.fromJson;

  @override
  int get today;
  @override
  int get month;
  @override
  int get yesterday;
  @override
  int get dinamicMonth;
  @override
  int get dinamicYesterday;

  /// Create a copy of Revenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueImplCopyWith<_$RevenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  int get today => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get yesterday => throw _privateConstructorUsedError;
  int get dinamicMonth => throw _privateConstructorUsedError;
  int get dinamicYesterday => throw _privateConstructorUsedError;

  /// Serializes this Orders to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Orders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Orders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _value.copyWith(
            today:
                null == today
                    ? _value.today
                    : today // ignore: cast_nullable_to_non_nullable
                        as int,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as int,
            yesterday:
                null == yesterday
                    ? _value.yesterday
                    : yesterday // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicMonth:
                null == dinamicMonth
                    ? _value.dinamicMonth
                    : dinamicMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicYesterday:
                null == dinamicYesterday
                    ? _value.dinamicYesterday
                    : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
    _$OrdersImpl value,
    $Res Function(_$OrdersImpl) then,
  ) = __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
    _$OrdersImpl _value,
    $Res Function(_$OrdersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Orders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _$OrdersImpl(
        today:
            null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                    as int,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as int,
        yesterday:
            null == yesterday
                ? _value.yesterday
                : yesterday // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicMonth:
            null == dinamicMonth
                ? _value.dinamicMonth
                : dinamicMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicYesterday:
            null == dinamicYesterday
                ? _value.dinamicYesterday
                : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersImpl implements _Orders {
  const _$OrdersImpl({
    required this.today,
    required this.month,
    required this.yesterday,
    required this.dinamicMonth,
    required this.dinamicYesterday,
  });

  factory _$OrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersImplFromJson(json);

  @override
  final int today;
  @override
  final int month;
  @override
  final int yesterday;
  @override
  final int dinamicMonth;
  @override
  final int dinamicYesterday;

  @override
  String toString() {
    return 'Orders(today: $today, month: $month, yesterday: $yesterday, dinamicMonth: $dinamicMonth, dinamicYesterday: $dinamicYesterday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.yesterday, yesterday) ||
                other.yesterday == yesterday) &&
            (identical(other.dinamicMonth, dinamicMonth) ||
                other.dinamicMonth == dinamicMonth) &&
            (identical(other.dinamicYesterday, dinamicYesterday) ||
                other.dinamicYesterday == dinamicYesterday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    today,
    month,
    yesterday,
    dinamicMonth,
    dinamicYesterday,
  );

  /// Create a copy of Orders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersImplToJson(this);
  }
}

abstract class _Orders implements Orders {
  const factory _Orders({
    required final int today,
    required final int month,
    required final int yesterday,
    required final int dinamicMonth,
    required final int dinamicYesterday,
  }) = _$OrdersImpl;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$OrdersImpl.fromJson;

  @override
  int get today;
  @override
  int get month;
  @override
  int get yesterday;
  @override
  int get dinamicMonth;
  @override
  int get dinamicYesterday;

  /// Create a copy of Orders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Marginality _$MarginalityFromJson(Map<String, dynamic> json) {
  return _Marginality.fromJson(json);
}

/// @nodoc
mixin _$Marginality {
  int get today => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get yesterday => throw _privateConstructorUsedError;
  int get dinamicMonth => throw _privateConstructorUsedError;
  int get dinamicYesterday => throw _privateConstructorUsedError;

  /// Serializes this Marginality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Marginality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarginalityCopyWith<Marginality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginalityCopyWith<$Res> {
  factory $MarginalityCopyWith(
    Marginality value,
    $Res Function(Marginality) then,
  ) = _$MarginalityCopyWithImpl<$Res, Marginality>;
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class _$MarginalityCopyWithImpl<$Res, $Val extends Marginality>
    implements $MarginalityCopyWith<$Res> {
  _$MarginalityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Marginality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _value.copyWith(
            today:
                null == today
                    ? _value.today
                    : today // ignore: cast_nullable_to_non_nullable
                        as int,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as int,
            yesterday:
                null == yesterday
                    ? _value.yesterday
                    : yesterday // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicMonth:
                null == dinamicMonth
                    ? _value.dinamicMonth
                    : dinamicMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicYesterday:
                null == dinamicYesterday
                    ? _value.dinamicYesterday
                    : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarginalityImplCopyWith<$Res>
    implements $MarginalityCopyWith<$Res> {
  factory _$$MarginalityImplCopyWith(
    _$MarginalityImpl value,
    $Res Function(_$MarginalityImpl) then,
  ) = __$$MarginalityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class __$$MarginalityImplCopyWithImpl<$Res>
    extends _$MarginalityCopyWithImpl<$Res, _$MarginalityImpl>
    implements _$$MarginalityImplCopyWith<$Res> {
  __$$MarginalityImplCopyWithImpl(
    _$MarginalityImpl _value,
    $Res Function(_$MarginalityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Marginality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _$MarginalityImpl(
        today:
            null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                    as int,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as int,
        yesterday:
            null == yesterday
                ? _value.yesterday
                : yesterday // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicMonth:
            null == dinamicMonth
                ? _value.dinamicMonth
                : dinamicMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicYesterday:
            null == dinamicYesterday
                ? _value.dinamicYesterday
                : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarginalityImpl implements _Marginality {
  const _$MarginalityImpl({
    required this.today,
    required this.month,
    required this.yesterday,
    required this.dinamicMonth,
    required this.dinamicYesterday,
  });

  factory _$MarginalityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarginalityImplFromJson(json);

  @override
  final int today;
  @override
  final int month;
  @override
  final int yesterday;
  @override
  final int dinamicMonth;
  @override
  final int dinamicYesterday;

  @override
  String toString() {
    return 'Marginality(today: $today, month: $month, yesterday: $yesterday, dinamicMonth: $dinamicMonth, dinamicYesterday: $dinamicYesterday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarginalityImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.yesterday, yesterday) ||
                other.yesterday == yesterday) &&
            (identical(other.dinamicMonth, dinamicMonth) ||
                other.dinamicMonth == dinamicMonth) &&
            (identical(other.dinamicYesterday, dinamicYesterday) ||
                other.dinamicYesterday == dinamicYesterday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    today,
    month,
    yesterday,
    dinamicMonth,
    dinamicYesterday,
  );

  /// Create a copy of Marginality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarginalityImplCopyWith<_$MarginalityImpl> get copyWith =>
      __$$MarginalityImplCopyWithImpl<_$MarginalityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarginalityImplToJson(this);
  }
}

abstract class _Marginality implements Marginality {
  const factory _Marginality({
    required final int today,
    required final int month,
    required final int yesterday,
    required final int dinamicMonth,
    required final int dinamicYesterday,
  }) = _$MarginalityImpl;

  factory _Marginality.fromJson(Map<String, dynamic> json) =
      _$MarginalityImpl.fromJson;

  @override
  int get today;
  @override
  int get month;
  @override
  int get yesterday;
  @override
  int get dinamicMonth;
  @override
  int get dinamicYesterday;

  /// Create a copy of Marginality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarginalityImplCopyWith<_$MarginalityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AverageCheck _$AverageCheckFromJson(Map<String, dynamic> json) {
  return _AverageCheck.fromJson(json);
}

/// @nodoc
mixin _$AverageCheck {
  int get today => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get yesterday => throw _privateConstructorUsedError;
  int get dinamicMonth => throw _privateConstructorUsedError;
  int get dinamicYesterday => throw _privateConstructorUsedError;

  /// Serializes this AverageCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AverageCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AverageCheckCopyWith<AverageCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AverageCheckCopyWith<$Res> {
  factory $AverageCheckCopyWith(
    AverageCheck value,
    $Res Function(AverageCheck) then,
  ) = _$AverageCheckCopyWithImpl<$Res, AverageCheck>;
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class _$AverageCheckCopyWithImpl<$Res, $Val extends AverageCheck>
    implements $AverageCheckCopyWith<$Res> {
  _$AverageCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AverageCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _value.copyWith(
            today:
                null == today
                    ? _value.today
                    : today // ignore: cast_nullable_to_non_nullable
                        as int,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as int,
            yesterday:
                null == yesterday
                    ? _value.yesterday
                    : yesterday // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicMonth:
                null == dinamicMonth
                    ? _value.dinamicMonth
                    : dinamicMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            dinamicYesterday:
                null == dinamicYesterday
                    ? _value.dinamicYesterday
                    : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AverageCheckImplCopyWith<$Res>
    implements $AverageCheckCopyWith<$Res> {
  factory _$$AverageCheckImplCopyWith(
    _$AverageCheckImpl value,
    $Res Function(_$AverageCheckImpl) then,
  ) = __$$AverageCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int today,
    int month,
    int yesterday,
    int dinamicMonth,
    int dinamicYesterday,
  });
}

/// @nodoc
class __$$AverageCheckImplCopyWithImpl<$Res>
    extends _$AverageCheckCopyWithImpl<$Res, _$AverageCheckImpl>
    implements _$$AverageCheckImplCopyWith<$Res> {
  __$$AverageCheckImplCopyWithImpl(
    _$AverageCheckImpl _value,
    $Res Function(_$AverageCheckImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AverageCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? month = null,
    Object? yesterday = null,
    Object? dinamicMonth = null,
    Object? dinamicYesterday = null,
  }) {
    return _then(
      _$AverageCheckImpl(
        today:
            null == today
                ? _value.today
                : today // ignore: cast_nullable_to_non_nullable
                    as int,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as int,
        yesterday:
            null == yesterday
                ? _value.yesterday
                : yesterday // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicMonth:
            null == dinamicMonth
                ? _value.dinamicMonth
                : dinamicMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        dinamicYesterday:
            null == dinamicYesterday
                ? _value.dinamicYesterday
                : dinamicYesterday // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AverageCheckImpl implements _AverageCheck {
  const _$AverageCheckImpl({
    required this.today,
    required this.month,
    required this.yesterday,
    required this.dinamicMonth,
    required this.dinamicYesterday,
  });

  factory _$AverageCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$AverageCheckImplFromJson(json);

  @override
  final int today;
  @override
  final int month;
  @override
  final int yesterday;
  @override
  final int dinamicMonth;
  @override
  final int dinamicYesterday;

  @override
  String toString() {
    return 'AverageCheck(today: $today, month: $month, yesterday: $yesterday, dinamicMonth: $dinamicMonth, dinamicYesterday: $dinamicYesterday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AverageCheckImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.yesterday, yesterday) ||
                other.yesterday == yesterday) &&
            (identical(other.dinamicMonth, dinamicMonth) ||
                other.dinamicMonth == dinamicMonth) &&
            (identical(other.dinamicYesterday, dinamicYesterday) ||
                other.dinamicYesterday == dinamicYesterday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    today,
    month,
    yesterday,
    dinamicMonth,
    dinamicYesterday,
  );

  /// Create a copy of AverageCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AverageCheckImplCopyWith<_$AverageCheckImpl> get copyWith =>
      __$$AverageCheckImplCopyWithImpl<_$AverageCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AverageCheckImplToJson(this);
  }
}

abstract class _AverageCheck implements AverageCheck {
  const factory _AverageCheck({
    required final int today,
    required final int month,
    required final int yesterday,
    required final int dinamicMonth,
    required final int dinamicYesterday,
  }) = _$AverageCheckImpl;

  factory _AverageCheck.fromJson(Map<String, dynamic> json) =
      _$AverageCheckImpl.fromJson;

  @override
  int get today;
  @override
  int get month;
  @override
  int get yesterday;
  @override
  int get dinamicMonth;
  @override
  int get dinamicYesterday;

  /// Create a copy of AverageCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AverageCheckImplCopyWith<_$AverageCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
