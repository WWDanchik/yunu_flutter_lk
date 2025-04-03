// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'received.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DateValueData _$DateValueDataFromJson(Map<String, dynamic> json) {
  return _DateValueData.fromJson(json);
}

/// @nodoc
mixin _$DateValueData {
  String get date => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this DateValueData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateValueData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateValueDataCopyWith<DateValueData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateValueDataCopyWith<$Res> {
  factory $DateValueDataCopyWith(
    DateValueData value,
    $Res Function(DateValueData) then,
  ) = _$DateValueDataCopyWithImpl<$Res, DateValueData>;
  @useResult
  $Res call({String date, int value});
}

/// @nodoc
class _$DateValueDataCopyWithImpl<$Res, $Val extends DateValueData>
    implements $DateValueDataCopyWith<$Res> {
  _$DateValueDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateValueData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DateValueDataImplCopyWith<$Res>
    implements $DateValueDataCopyWith<$Res> {
  factory _$$DateValueDataImplCopyWith(
    _$DateValueDataImpl value,
    $Res Function(_$DateValueDataImpl) then,
  ) = __$$DateValueDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int value});
}

/// @nodoc
class __$$DateValueDataImplCopyWithImpl<$Res>
    extends _$DateValueDataCopyWithImpl<$Res, _$DateValueDataImpl>
    implements _$$DateValueDataImplCopyWith<$Res> {
  __$$DateValueDataImplCopyWithImpl(
    _$DateValueDataImpl _value,
    $Res Function(_$DateValueDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DateValueData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? value = null}) {
    return _then(
      _$DateValueDataImpl(
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DateValueDataImpl implements _DateValueData {
  _$DateValueDataImpl({required this.date, required this.value});

  factory _$DateValueDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateValueDataImplFromJson(json);

  @override
  final String date;
  @override
  final int value;

  @override
  String toString() {
    return 'DateValueData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateValueDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of DateValueData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateValueDataImplCopyWith<_$DateValueDataImpl> get copyWith =>
      __$$DateValueDataImplCopyWithImpl<_$DateValueDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateValueDataImplToJson(this);
  }
}

abstract class _DateValueData implements DateValueData {
  factory _DateValueData({
    required final String date,
    required final int value,
  }) = _$DateValueDataImpl;

  factory _DateValueData.fromJson(Map<String, dynamic> json) =
      _$DateValueDataImpl.fromJson;

  @override
  String get date;
  @override
  int get value;

  /// Create a copy of DateValueData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateValueDataImplCopyWith<_$DateValueDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceivedResult _$ReceivedResultFromJson(Map<String, dynamic> json) {
  return _ReceivedResult.fromJson(json);
}

/// @nodoc
mixin _$ReceivedResult {
  Received get data => throw _privateConstructorUsedError;

  /// Serializes this ReceivedResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceivedResultCopyWith<ReceivedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedResultCopyWith<$Res> {
  factory $ReceivedResultCopyWith(
    ReceivedResult value,
    $Res Function(ReceivedResult) then,
  ) = _$ReceivedResultCopyWithImpl<$Res, ReceivedResult>;
  @useResult
  $Res call({Received data});

  $ReceivedCopyWith<$Res> get data;
}

/// @nodoc
class _$ReceivedResultCopyWithImpl<$Res, $Val extends ReceivedResult>
    implements $ReceivedResultCopyWith<$Res> {
  _$ReceivedResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as Received,
          )
          as $Val,
    );
  }

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceivedCopyWith<$Res> get data {
    return $ReceivedCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceivedResultImplCopyWith<$Res>
    implements $ReceivedResultCopyWith<$Res> {
  factory _$$ReceivedResultImplCopyWith(
    _$ReceivedResultImpl value,
    $Res Function(_$ReceivedResultImpl) then,
  ) = __$$ReceivedResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Received data});

  @override
  $ReceivedCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReceivedResultImplCopyWithImpl<$Res>
    extends _$ReceivedResultCopyWithImpl<$Res, _$ReceivedResultImpl>
    implements _$$ReceivedResultImplCopyWith<$Res> {
  __$$ReceivedResultImplCopyWithImpl(
    _$ReceivedResultImpl _value,
    $Res Function(_$ReceivedResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$ReceivedResultImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as Received,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceivedResultImpl implements _ReceivedResult {
  _$ReceivedResultImpl({required this.data});

  factory _$ReceivedResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceivedResultImplFromJson(json);

  @override
  final Received data;

  @override
  String toString() {
    return 'ReceivedResult(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceivedResultImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceivedResultImplCopyWith<_$ReceivedResultImpl> get copyWith =>
      __$$ReceivedResultImplCopyWithImpl<_$ReceivedResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceivedResultImplToJson(this);
  }
}

abstract class _ReceivedResult implements ReceivedResult {
  factory _ReceivedResult({required final Received data}) =
      _$ReceivedResultImpl;

  factory _ReceivedResult.fromJson(Map<String, dynamic> json) =
      _$ReceivedResultImpl.fromJson;

  @override
  Received get data;

  /// Create a copy of ReceivedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceivedResultImplCopyWith<_$ReceivedResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Received _$ReceivedFromJson(Map<String, dynamic> json) {
  return _Received.fromJson(json);
}

/// @nodoc
mixin _$Received {
  @JsonKey(name: 'SBER_FBS')
  List<DateValueData> get sberFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  List<DateValueData> get ozonRealFbsExpress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
  List<DateValueData> get wildberriesFbsHeavy =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'WILDBERRIES_FBS')
  List<DateValueData> get wildberriesFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  List<DateValueData> get yandexMarketFbs => throw _privateConstructorUsedError;
  @JsonKey(name: 'WILDBERRIES_FBO')
  List<DateValueData> get wildberriesFbo => throw _privateConstructorUsedError;
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  List<DateValueData> get yandexMarketFbsFast =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'OZON_FBS')
  List<DateValueData> get ozonFbs => throw _privateConstructorUsedError;
  List<DateValueData> get total => throw _privateConstructorUsedError;

  /// Serializes this Received to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Received
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceivedCopyWith<Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedCopyWith<$Res> {
  factory $ReceivedCopyWith(Received value, $Res Function(Received) then) =
      _$ReceivedCopyWithImpl<$Res, Received>;
  @useResult
  $Res call({
    @JsonKey(name: 'SBER_FBS') List<DateValueData> sberFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    List<DateValueData> ozonRealFbsExpress,
    @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
    List<DateValueData> wildberriesFbsHeavy,
    @JsonKey(name: 'WILDBERRIES_FBS') List<DateValueData> wildberriesFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS') List<DateValueData> yandexMarketFbs,
    @JsonKey(name: 'WILDBERRIES_FBO') List<DateValueData> wildberriesFbo,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    List<DateValueData> yandexMarketFbsFast,
    @JsonKey(name: 'OZON_FBS') List<DateValueData> ozonFbs,
    List<DateValueData> total,
  });
}

/// @nodoc
class _$ReceivedCopyWithImpl<$Res, $Val extends Received>
    implements $ReceivedCopyWith<$Res> {
  _$ReceivedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Received
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sberFbs = null,
    Object? ozonRealFbsExpress = null,
    Object? wildberriesFbsHeavy = null,
    Object? wildberriesFbs = null,
    Object? yandexMarketFbs = null,
    Object? wildberriesFbo = null,
    Object? yandexMarketFbsFast = null,
    Object? ozonFbs = null,
    Object? total = null,
  }) {
    return _then(
      _value.copyWith(
            sberFbs:
                null == sberFbs
                    ? _value.sberFbs
                    : sberFbs // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            ozonRealFbsExpress:
                null == ozonRealFbsExpress
                    ? _value.ozonRealFbsExpress
                    : ozonRealFbsExpress // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            wildberriesFbsHeavy:
                null == wildberriesFbsHeavy
                    ? _value.wildberriesFbsHeavy
                    : wildberriesFbsHeavy // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            wildberriesFbs:
                null == wildberriesFbs
                    ? _value.wildberriesFbs
                    : wildberriesFbs // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            yandexMarketFbs:
                null == yandexMarketFbs
                    ? _value.yandexMarketFbs
                    : yandexMarketFbs // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            wildberriesFbo:
                null == wildberriesFbo
                    ? _value.wildberriesFbo
                    : wildberriesFbo // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            yandexMarketFbsFast:
                null == yandexMarketFbsFast
                    ? _value.yandexMarketFbsFast
                    : yandexMarketFbsFast // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            ozonFbs:
                null == ozonFbs
                    ? _value.ozonFbs
                    : ozonFbs // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReceivedImplCopyWith<$Res>
    implements $ReceivedCopyWith<$Res> {
  factory _$$ReceivedImplCopyWith(
    _$ReceivedImpl value,
    $Res Function(_$ReceivedImpl) then,
  ) = __$$ReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'SBER_FBS') List<DateValueData> sberFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    List<DateValueData> ozonRealFbsExpress,
    @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
    List<DateValueData> wildberriesFbsHeavy,
    @JsonKey(name: 'WILDBERRIES_FBS') List<DateValueData> wildberriesFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS') List<DateValueData> yandexMarketFbs,
    @JsonKey(name: 'WILDBERRIES_FBO') List<DateValueData> wildberriesFbo,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    List<DateValueData> yandexMarketFbsFast,
    @JsonKey(name: 'OZON_FBS') List<DateValueData> ozonFbs,
    List<DateValueData> total,
  });
}

/// @nodoc
class __$$ReceivedImplCopyWithImpl<$Res>
    extends _$ReceivedCopyWithImpl<$Res, _$ReceivedImpl>
    implements _$$ReceivedImplCopyWith<$Res> {
  __$$ReceivedImplCopyWithImpl(
    _$ReceivedImpl _value,
    $Res Function(_$ReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Received
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sberFbs = null,
    Object? ozonRealFbsExpress = null,
    Object? wildberriesFbsHeavy = null,
    Object? wildberriesFbs = null,
    Object? yandexMarketFbs = null,
    Object? wildberriesFbo = null,
    Object? yandexMarketFbsFast = null,
    Object? ozonFbs = null,
    Object? total = null,
  }) {
    return _then(
      _$ReceivedImpl(
        sberFbs:
            null == sberFbs
                ? _value._sberFbs
                : sberFbs // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        ozonRealFbsExpress:
            null == ozonRealFbsExpress
                ? _value._ozonRealFbsExpress
                : ozonRealFbsExpress // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        wildberriesFbsHeavy:
            null == wildberriesFbsHeavy
                ? _value._wildberriesFbsHeavy
                : wildberriesFbsHeavy // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        wildberriesFbs:
            null == wildberriesFbs
                ? _value._wildberriesFbs
                : wildberriesFbs // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        yandexMarketFbs:
            null == yandexMarketFbs
                ? _value._yandexMarketFbs
                : yandexMarketFbs // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        wildberriesFbo:
            null == wildberriesFbo
                ? _value._wildberriesFbo
                : wildberriesFbo // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        yandexMarketFbsFast:
            null == yandexMarketFbsFast
                ? _value._yandexMarketFbsFast
                : yandexMarketFbsFast // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        ozonFbs:
            null == ozonFbs
                ? _value._ozonFbs
                : ozonFbs // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        total:
            null == total
                ? _value._total
                : total // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceivedImpl implements _Received {
  _$ReceivedImpl({
    @JsonKey(name: 'SBER_FBS') required final List<DateValueData> sberFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    required final List<DateValueData> ozonRealFbsExpress,
    @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
    required final List<DateValueData> wildberriesFbsHeavy,
    @JsonKey(name: 'WILDBERRIES_FBS')
    required final List<DateValueData> wildberriesFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS')
    required final List<DateValueData> yandexMarketFbs,
    @JsonKey(name: 'WILDBERRIES_FBO')
    required final List<DateValueData> wildberriesFbo,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    required final List<DateValueData> yandexMarketFbsFast,
    @JsonKey(name: 'OZON_FBS') required final List<DateValueData> ozonFbs,
    required final List<DateValueData> total,
  }) : _sberFbs = sberFbs,
       _ozonRealFbsExpress = ozonRealFbsExpress,
       _wildberriesFbsHeavy = wildberriesFbsHeavy,
       _wildberriesFbs = wildberriesFbs,
       _yandexMarketFbs = yandexMarketFbs,
       _wildberriesFbo = wildberriesFbo,
       _yandexMarketFbsFast = yandexMarketFbsFast,
       _ozonFbs = ozonFbs,
       _total = total;

  factory _$ReceivedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceivedImplFromJson(json);

  final List<DateValueData> _sberFbs;
  @override
  @JsonKey(name: 'SBER_FBS')
  List<DateValueData> get sberFbs {
    if (_sberFbs is EqualUnmodifiableListView) return _sberFbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sberFbs);
  }

  final List<DateValueData> _ozonRealFbsExpress;
  @override
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  List<DateValueData> get ozonRealFbsExpress {
    if (_ozonRealFbsExpress is EqualUnmodifiableListView)
      return _ozonRealFbsExpress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ozonRealFbsExpress);
  }

  final List<DateValueData> _wildberriesFbsHeavy;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
  List<DateValueData> get wildberriesFbsHeavy {
    if (_wildberriesFbsHeavy is EqualUnmodifiableListView)
      return _wildberriesFbsHeavy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wildberriesFbsHeavy);
  }

  final List<DateValueData> _wildberriesFbs;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS')
  List<DateValueData> get wildberriesFbs {
    if (_wildberriesFbs is EqualUnmodifiableListView) return _wildberriesFbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wildberriesFbs);
  }

  final List<DateValueData> _yandexMarketFbs;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  List<DateValueData> get yandexMarketFbs {
    if (_yandexMarketFbs is EqualUnmodifiableListView) return _yandexMarketFbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yandexMarketFbs);
  }

  final List<DateValueData> _wildberriesFbo;
  @override
  @JsonKey(name: 'WILDBERRIES_FBO')
  List<DateValueData> get wildberriesFbo {
    if (_wildberriesFbo is EqualUnmodifiableListView) return _wildberriesFbo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wildberriesFbo);
  }

  final List<DateValueData> _yandexMarketFbsFast;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  List<DateValueData> get yandexMarketFbsFast {
    if (_yandexMarketFbsFast is EqualUnmodifiableListView)
      return _yandexMarketFbsFast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yandexMarketFbsFast);
  }

  final List<DateValueData> _ozonFbs;
  @override
  @JsonKey(name: 'OZON_FBS')
  List<DateValueData> get ozonFbs {
    if (_ozonFbs is EqualUnmodifiableListView) return _ozonFbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ozonFbs);
  }

  final List<DateValueData> _total;
  @override
  List<DateValueData> get total {
    if (_total is EqualUnmodifiableListView) return _total;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_total);
  }

  @override
  String toString() {
    return 'Received(sberFbs: $sberFbs, ozonRealFbsExpress: $ozonRealFbsExpress, wildberriesFbsHeavy: $wildberriesFbsHeavy, wildberriesFbs: $wildberriesFbs, yandexMarketFbs: $yandexMarketFbs, wildberriesFbo: $wildberriesFbo, yandexMarketFbsFast: $yandexMarketFbsFast, ozonFbs: $ozonFbs, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceivedImpl &&
            const DeepCollectionEquality().equals(other._sberFbs, _sberFbs) &&
            const DeepCollectionEquality().equals(
              other._ozonRealFbsExpress,
              _ozonRealFbsExpress,
            ) &&
            const DeepCollectionEquality().equals(
              other._wildberriesFbsHeavy,
              _wildberriesFbsHeavy,
            ) &&
            const DeepCollectionEquality().equals(
              other._wildberriesFbs,
              _wildberriesFbs,
            ) &&
            const DeepCollectionEquality().equals(
              other._yandexMarketFbs,
              _yandexMarketFbs,
            ) &&
            const DeepCollectionEquality().equals(
              other._wildberriesFbo,
              _wildberriesFbo,
            ) &&
            const DeepCollectionEquality().equals(
              other._yandexMarketFbsFast,
              _yandexMarketFbsFast,
            ) &&
            const DeepCollectionEquality().equals(other._ozonFbs, _ozonFbs) &&
            const DeepCollectionEquality().equals(other._total, _total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sberFbs),
    const DeepCollectionEquality().hash(_ozonRealFbsExpress),
    const DeepCollectionEquality().hash(_wildberriesFbsHeavy),
    const DeepCollectionEquality().hash(_wildberriesFbs),
    const DeepCollectionEquality().hash(_yandexMarketFbs),
    const DeepCollectionEquality().hash(_wildberriesFbo),
    const DeepCollectionEquality().hash(_yandexMarketFbsFast),
    const DeepCollectionEquality().hash(_ozonFbs),
    const DeepCollectionEquality().hash(_total),
  );

  /// Create a copy of Received
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceivedImplCopyWith<_$ReceivedImpl> get copyWith =>
      __$$ReceivedImplCopyWithImpl<_$ReceivedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceivedImplToJson(this);
  }
}

abstract class _Received implements Received {
  factory _Received({
    @JsonKey(name: 'SBER_FBS') required final List<DateValueData> sberFbs,
    @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
    required final List<DateValueData> ozonRealFbsExpress,
    @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
    required final List<DateValueData> wildberriesFbsHeavy,
    @JsonKey(name: 'WILDBERRIES_FBS')
    required final List<DateValueData> wildberriesFbs,
    @JsonKey(name: 'YANDEX_MARKET_FBS')
    required final List<DateValueData> yandexMarketFbs,
    @JsonKey(name: 'WILDBERRIES_FBO')
    required final List<DateValueData> wildberriesFbo,
    @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
    required final List<DateValueData> yandexMarketFbsFast,
    @JsonKey(name: 'OZON_FBS') required final List<DateValueData> ozonFbs,
    required final List<DateValueData> total,
  }) = _$ReceivedImpl;

  factory _Received.fromJson(Map<String, dynamic> json) =
      _$ReceivedImpl.fromJson;

  @override
  @JsonKey(name: 'SBER_FBS')
  List<DateValueData> get sberFbs;
  @override
  @JsonKey(name: 'OZON_REAL_FBS_EXPRESS')
  List<DateValueData> get ozonRealFbsExpress;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS_HEAVY')
  List<DateValueData> get wildberriesFbsHeavy;
  @override
  @JsonKey(name: 'WILDBERRIES_FBS')
  List<DateValueData> get wildberriesFbs;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS')
  List<DateValueData> get yandexMarketFbs;
  @override
  @JsonKey(name: 'WILDBERRIES_FBO')
  List<DateValueData> get wildberriesFbo;
  @override
  @JsonKey(name: 'YANDEX_MARKET_FBS_FAST')
  List<DateValueData> get yandexMarketFbsFast;
  @override
  @JsonKey(name: 'OZON_FBS')
  List<DateValueData> get ozonFbs;
  @override
  List<DateValueData> get total;

  /// Create a copy of Received
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceivedImplCopyWith<_$ReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
