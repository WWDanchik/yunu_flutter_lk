// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChartConfig {
  List<LineConfig> get lines => throw _privateConstructorUsedError;
  AxisConfig get xAxis => throw _privateConstructorUsedError;
  AxisConfig get yAxis => throw _privateConstructorUsedError;
  ChartStyle get style => throw _privateConstructorUsedError;

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartConfigCopyWith<ChartConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartConfigCopyWith<$Res> {
  factory $ChartConfigCopyWith(
    ChartConfig value,
    $Res Function(ChartConfig) then,
  ) = _$ChartConfigCopyWithImpl<$Res, ChartConfig>;
  @useResult
  $Res call({
    List<LineConfig> lines,
    AxisConfig xAxis,
    AxisConfig yAxis,
    ChartStyle style,
  });

  $AxisConfigCopyWith<$Res> get xAxis;
  $AxisConfigCopyWith<$Res> get yAxis;
  $ChartStyleCopyWith<$Res> get style;
}

/// @nodoc
class _$ChartConfigCopyWithImpl<$Res, $Val extends ChartConfig>
    implements $ChartConfigCopyWith<$Res> {
  _$ChartConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? xAxis = null,
    Object? yAxis = null,
    Object? style = null,
  }) {
    return _then(
      _value.copyWith(
            lines:
                null == lines
                    ? _value.lines
                    : lines // ignore: cast_nullable_to_non_nullable
                        as List<LineConfig>,
            xAxis:
                null == xAxis
                    ? _value.xAxis
                    : xAxis // ignore: cast_nullable_to_non_nullable
                        as AxisConfig,
            yAxis:
                null == yAxis
                    ? _value.yAxis
                    : yAxis // ignore: cast_nullable_to_non_nullable
                        as AxisConfig,
            style:
                null == style
                    ? _value.style
                    : style // ignore: cast_nullable_to_non_nullable
                        as ChartStyle,
          )
          as $Val,
    );
  }

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AxisConfigCopyWith<$Res> get xAxis {
    return $AxisConfigCopyWith<$Res>(_value.xAxis, (value) {
      return _then(_value.copyWith(xAxis: value) as $Val);
    });
  }

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AxisConfigCopyWith<$Res> get yAxis {
    return $AxisConfigCopyWith<$Res>(_value.yAxis, (value) {
      return _then(_value.copyWith(yAxis: value) as $Val);
    });
  }

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartStyleCopyWith<$Res> get style {
    return $ChartStyleCopyWith<$Res>(_value.style, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChartConfigImplCopyWith<$Res>
    implements $ChartConfigCopyWith<$Res> {
  factory _$$ChartConfigImplCopyWith(
    _$ChartConfigImpl value,
    $Res Function(_$ChartConfigImpl) then,
  ) = __$$ChartConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<LineConfig> lines,
    AxisConfig xAxis,
    AxisConfig yAxis,
    ChartStyle style,
  });

  @override
  $AxisConfigCopyWith<$Res> get xAxis;
  @override
  $AxisConfigCopyWith<$Res> get yAxis;
  @override
  $ChartStyleCopyWith<$Res> get style;
}

/// @nodoc
class __$$ChartConfigImplCopyWithImpl<$Res>
    extends _$ChartConfigCopyWithImpl<$Res, _$ChartConfigImpl>
    implements _$$ChartConfigImplCopyWith<$Res> {
  __$$ChartConfigImplCopyWithImpl(
    _$ChartConfigImpl _value,
    $Res Function(_$ChartConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? xAxis = null,
    Object? yAxis = null,
    Object? style = null,
  }) {
    return _then(
      _$ChartConfigImpl(
        lines:
            null == lines
                ? _value._lines
                : lines // ignore: cast_nullable_to_non_nullable
                    as List<LineConfig>,
        xAxis:
            null == xAxis
                ? _value.xAxis
                : xAxis // ignore: cast_nullable_to_non_nullable
                    as AxisConfig,
        yAxis:
            null == yAxis
                ? _value.yAxis
                : yAxis // ignore: cast_nullable_to_non_nullable
                    as AxisConfig,
        style:
            null == style
                ? _value.style
                : style // ignore: cast_nullable_to_non_nullable
                    as ChartStyle,
      ),
    );
  }
}

/// @nodoc

class _$ChartConfigImpl implements _ChartConfig {
  const _$ChartConfigImpl({
    required final List<LineConfig> lines,
    required this.xAxis,
    required this.yAxis,
    this.style = const ChartStyle(),
  }) : _lines = lines;

  final List<LineConfig> _lines;
  @override
  List<LineConfig> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  final AxisConfig xAxis;
  @override
  final AxisConfig yAxis;
  @override
  @JsonKey()
  final ChartStyle style;

  @override
  String toString() {
    return 'ChartConfig(lines: $lines, xAxis: $xAxis, yAxis: $yAxis, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartConfigImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.xAxis, xAxis) || other.xAxis == xAxis) &&
            (identical(other.yAxis, yAxis) || other.yAxis == yAxis) &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_lines),
    xAxis,
    yAxis,
    style,
  );

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartConfigImplCopyWith<_$ChartConfigImpl> get copyWith =>
      __$$ChartConfigImplCopyWithImpl<_$ChartConfigImpl>(this, _$identity);
}

abstract class _ChartConfig implements ChartConfig {
  const factory _ChartConfig({
    required final List<LineConfig> lines,
    required final AxisConfig xAxis,
    required final AxisConfig yAxis,
    final ChartStyle style,
  }) = _$ChartConfigImpl;

  @override
  List<LineConfig> get lines;
  @override
  AxisConfig get xAxis;
  @override
  AxisConfig get yAxis;
  @override
  ChartStyle get style;

  /// Create a copy of ChartConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartConfigImplCopyWith<_$ChartConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LineConfig {
  String get label => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  List<DateValueData> get data => throw _privateConstructorUsedError;
  bool get showDots => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get curveSmoothness => throw _privateConstructorUsedError;

  /// Create a copy of LineConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineConfigCopyWith<LineConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineConfigCopyWith<$Res> {
  factory $LineConfigCopyWith(
    LineConfig value,
    $Res Function(LineConfig) then,
  ) = _$LineConfigCopyWithImpl<$Res, LineConfig>;
  @useResult
  $Res call({
    String label,
    Color color,
    List<DateValueData> data,
    bool showDots,
    double width,
    double curveSmoothness,
  });
}

/// @nodoc
class _$LineConfigCopyWithImpl<$Res, $Val extends LineConfig>
    implements $LineConfigCopyWith<$Res> {
  _$LineConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? data = null,
    Object? showDots = null,
    Object? width = null,
    Object? curveSmoothness = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<DateValueData>,
            showDots:
                null == showDots
                    ? _value.showDots
                    : showDots // ignore: cast_nullable_to_non_nullable
                        as bool,
            width:
                null == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as double,
            curveSmoothness:
                null == curveSmoothness
                    ? _value.curveSmoothness
                    : curveSmoothness // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LineConfigImplCopyWith<$Res>
    implements $LineConfigCopyWith<$Res> {
  factory _$$LineConfigImplCopyWith(
    _$LineConfigImpl value,
    $Res Function(_$LineConfigImpl) then,
  ) = __$$LineConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String label,
    Color color,
    List<DateValueData> data,
    bool showDots,
    double width,
    double curveSmoothness,
  });
}

/// @nodoc
class __$$LineConfigImplCopyWithImpl<$Res>
    extends _$LineConfigCopyWithImpl<$Res, _$LineConfigImpl>
    implements _$$LineConfigImplCopyWith<$Res> {
  __$$LineConfigImplCopyWithImpl(
    _$LineConfigImpl _value,
    $Res Function(_$LineConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LineConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? color = null,
    Object? data = null,
    Object? showDots = null,
    Object? width = null,
    Object? curveSmoothness = null,
  }) {
    return _then(
      _$LineConfigImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<DateValueData>,
        showDots:
            null == showDots
                ? _value.showDots
                : showDots // ignore: cast_nullable_to_non_nullable
                    as bool,
        width:
            null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as double,
        curveSmoothness:
            null == curveSmoothness
                ? _value.curveSmoothness
                : curveSmoothness // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$LineConfigImpl implements _LineConfig {
  const _$LineConfigImpl({
    required this.label,
    required this.color,
    required final List<DateValueData> data,
    this.showDots = false,
    this.width = 2.0,
    this.curveSmoothness = 0.5,
  }) : _data = data;

  @override
  final String label;
  @override
  final Color color;
  final List<DateValueData> _data;
  @override
  List<DateValueData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool showDots;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double curveSmoothness;

  @override
  String toString() {
    return 'LineConfig(label: $label, color: $color, data: $data, showDots: $showDots, width: $width, curveSmoothness: $curveSmoothness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineConfigImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.showDots, showDots) ||
                other.showDots == showDots) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.curveSmoothness, curveSmoothness) ||
                other.curveSmoothness == curveSmoothness));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    label,
    color,
    const DeepCollectionEquality().hash(_data),
    showDots,
    width,
    curveSmoothness,
  );

  /// Create a copy of LineConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineConfigImplCopyWith<_$LineConfigImpl> get copyWith =>
      __$$LineConfigImplCopyWithImpl<_$LineConfigImpl>(this, _$identity);
}

abstract class _LineConfig implements LineConfig {
  const factory _LineConfig({
    required final String label,
    required final Color color,
    required final List<DateValueData> data,
    final bool showDots,
    final double width,
    final double curveSmoothness,
  }) = _$LineConfigImpl;

  @override
  String get label;
  @override
  Color get color;
  @override
  List<DateValueData> get data;
  @override
  bool get showDots;
  @override
  double get width;
  @override
  double get curveSmoothness;

  /// Create a copy of LineConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineConfigImplCopyWith<_$LineConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AxisConfig {
  String? get label => throw _privateConstructorUsedError;
  bool get showLabels => throw _privateConstructorUsedError;
  String Function(String) get formatLabel => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  /// Create a copy of AxisConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AxisConfigCopyWith<AxisConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AxisConfigCopyWith<$Res> {
  factory $AxisConfigCopyWith(
    AxisConfig value,
    $Res Function(AxisConfig) then,
  ) = _$AxisConfigCopyWithImpl<$Res, AxisConfig>;
  @useResult
  $Res call({
    String? label,
    bool showLabels,
    String Function(String) formatLabel,
    bool visible,
  });
}

/// @nodoc
class _$AxisConfigCopyWithImpl<$Res, $Val extends AxisConfig>
    implements $AxisConfigCopyWith<$Res> {
  _$AxisConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AxisConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? showLabels = null,
    Object? formatLabel = null,
    Object? visible = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
            showLabels:
                null == showLabels
                    ? _value.showLabels
                    : showLabels // ignore: cast_nullable_to_non_nullable
                        as bool,
            formatLabel:
                null == formatLabel
                    ? _value.formatLabel
                    : formatLabel // ignore: cast_nullable_to_non_nullable
                        as String Function(String),
            visible:
                null == visible
                    ? _value.visible
                    : visible // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AxisConfigImplCopyWith<$Res>
    implements $AxisConfigCopyWith<$Res> {
  factory _$$AxisConfigImplCopyWith(
    _$AxisConfigImpl value,
    $Res Function(_$AxisConfigImpl) then,
  ) = __$$AxisConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? label,
    bool showLabels,
    String Function(String) formatLabel,
    bool visible,
  });
}

/// @nodoc
class __$$AxisConfigImplCopyWithImpl<$Res>
    extends _$AxisConfigCopyWithImpl<$Res, _$AxisConfigImpl>
    implements _$$AxisConfigImplCopyWith<$Res> {
  __$$AxisConfigImplCopyWithImpl(
    _$AxisConfigImpl _value,
    $Res Function(_$AxisConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AxisConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? showLabels = null,
    Object? formatLabel = null,
    Object? visible = null,
  }) {
    return _then(
      _$AxisConfigImpl(
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
        showLabels:
            null == showLabels
                ? _value.showLabels
                : showLabels // ignore: cast_nullable_to_non_nullable
                    as bool,
        formatLabel:
            null == formatLabel
                ? _value.formatLabel
                : formatLabel // ignore: cast_nullable_to_non_nullable
                    as String Function(String),
        visible:
            null == visible
                ? _value.visible
                : visible // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$AxisConfigImpl implements _AxisConfig {
  const _$AxisConfigImpl({
    this.label,
    this.showLabels = true,
    this.formatLabel = _defaultLabelFormatter,
    this.visible = true,
  });

  @override
  final String? label;
  @override
  @JsonKey()
  final bool showLabels;
  @override
  @JsonKey()
  final String Function(String) formatLabel;
  @override
  @JsonKey()
  final bool visible;

  @override
  String toString() {
    return 'AxisConfig(label: $label, showLabels: $showLabels, formatLabel: $formatLabel, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AxisConfigImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.showLabels, showLabels) ||
                other.showLabels == showLabels) &&
            (identical(other.formatLabel, formatLabel) ||
                other.formatLabel == formatLabel) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, showLabels, formatLabel, visible);

  /// Create a copy of AxisConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AxisConfigImplCopyWith<_$AxisConfigImpl> get copyWith =>
      __$$AxisConfigImplCopyWithImpl<_$AxisConfigImpl>(this, _$identity);
}

abstract class _AxisConfig implements AxisConfig {
  const factory _AxisConfig({
    final String? label,
    final bool showLabels,
    final String Function(String) formatLabel,
    final bool visible,
  }) = _$AxisConfigImpl;

  @override
  String? get label;
  @override
  bool get showLabels;
  @override
  String Function(String) get formatLabel;
  @override
  bool get visible;

  /// Create a copy of AxisConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AxisConfigImplCopyWith<_$AxisConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartStyle {
  Color get backgroundColor => throw _privateConstructorUsedError;
  EdgeInsets get padding => throw _privateConstructorUsedError;
  double get aspectRatio => throw _privateConstructorUsedError;

  /// Create a copy of ChartStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartStyleCopyWith<ChartStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStyleCopyWith<$Res> {
  factory $ChartStyleCopyWith(
    ChartStyle value,
    $Res Function(ChartStyle) then,
  ) = _$ChartStyleCopyWithImpl<$Res, ChartStyle>;
  @useResult
  $Res call({Color backgroundColor, EdgeInsets padding, double aspectRatio});
}

/// @nodoc
class _$ChartStyleCopyWithImpl<$Res, $Val extends ChartStyle>
    implements $ChartStyleCopyWith<$Res> {
  _$ChartStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? padding = null,
    Object? aspectRatio = null,
  }) {
    return _then(
      _value.copyWith(
            backgroundColor:
                null == backgroundColor
                    ? _value.backgroundColor
                    : backgroundColor // ignore: cast_nullable_to_non_nullable
                        as Color,
            padding:
                null == padding
                    ? _value.padding
                    : padding // ignore: cast_nullable_to_non_nullable
                        as EdgeInsets,
            aspectRatio:
                null == aspectRatio
                    ? _value.aspectRatio
                    : aspectRatio // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChartStyleImplCopyWith<$Res>
    implements $ChartStyleCopyWith<$Res> {
  factory _$$ChartStyleImplCopyWith(
    _$ChartStyleImpl value,
    $Res Function(_$ChartStyleImpl) then,
  ) = __$$ChartStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color backgroundColor, EdgeInsets padding, double aspectRatio});
}

/// @nodoc
class __$$ChartStyleImplCopyWithImpl<$Res>
    extends _$ChartStyleCopyWithImpl<$Res, _$ChartStyleImpl>
    implements _$$ChartStyleImplCopyWith<$Res> {
  __$$ChartStyleImplCopyWithImpl(
    _$ChartStyleImpl _value,
    $Res Function(_$ChartStyleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChartStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? padding = null,
    Object? aspectRatio = null,
  }) {
    return _then(
      _$ChartStyleImpl(
        backgroundColor:
            null == backgroundColor
                ? _value.backgroundColor
                : backgroundColor // ignore: cast_nullable_to_non_nullable
                    as Color,
        padding:
            null == padding
                ? _value.padding
                : padding // ignore: cast_nullable_to_non_nullable
                    as EdgeInsets,
        aspectRatio:
            null == aspectRatio
                ? _value.aspectRatio
                : aspectRatio // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$ChartStyleImpl implements _ChartStyle {
  const _$ChartStyleImpl({
    this.backgroundColor = Colors.transparent,
    this.padding = const EdgeInsets.all(16),
    this.aspectRatio = 1.4,
  });

  @override
  @JsonKey()
  final Color backgroundColor;
  @override
  @JsonKey()
  final EdgeInsets padding;
  @override
  @JsonKey()
  final double aspectRatio;

  @override
  String toString() {
    return 'ChartStyle(backgroundColor: $backgroundColor, padding: $padding, aspectRatio: $aspectRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartStyleImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, backgroundColor, padding, aspectRatio);

  /// Create a copy of ChartStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartStyleImplCopyWith<_$ChartStyleImpl> get copyWith =>
      __$$ChartStyleImplCopyWithImpl<_$ChartStyleImpl>(this, _$identity);
}

abstract class _ChartStyle implements ChartStyle {
  const factory _ChartStyle({
    final Color backgroundColor,
    final EdgeInsets padding,
    final double aspectRatio,
  }) = _$ChartStyleImpl;

  @override
  Color get backgroundColor;
  @override
  EdgeInsets get padding;
  @override
  double get aspectRatio;

  /// Create a copy of ChartStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartStyleImplCopyWith<_$ChartStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
