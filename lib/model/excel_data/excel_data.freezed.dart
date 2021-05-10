// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'excel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExcelData _$ExcelDataFromJson(Map<String, dynamic> json) {
  return _ExcelData.fromJson(json);
}

/// @nodoc
class _$ExcelDataTearOff {
  const _$ExcelDataTearOff();

  _ExcelData call(
      {required String type,
      required String core,
      required String construction,
      required String diameter,
      required double rate,
      required double secondMeterRate,
      required double doubleFerrule}) {
    return _ExcelData(
      type: type,
      core: core,
      construction: construction,
      diameter: diameter,
      rate: rate,
      secondMeterRate: secondMeterRate,
      doubleFerrule: doubleFerrule,
    );
  }

  ExcelData fromJson(Map<String, Object> json) {
    return ExcelData.fromJson(json);
  }
}

/// @nodoc
const $ExcelData = _$ExcelDataTearOff();

/// @nodoc
mixin _$ExcelData {
  String get type => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  String get construction => throw _privateConstructorUsedError;
  String get diameter => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  double get secondMeterRate => throw _privateConstructorUsedError;
  double get doubleFerrule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExcelDataCopyWith<ExcelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcelDataCopyWith<$Res> {
  factory $ExcelDataCopyWith(ExcelData value, $Res Function(ExcelData) then) =
      _$ExcelDataCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String core,
      String construction,
      String diameter,
      double rate,
      double secondMeterRate,
      double doubleFerrule});
}

/// @nodoc
class _$ExcelDataCopyWithImpl<$Res> implements $ExcelDataCopyWith<$Res> {
  _$ExcelDataCopyWithImpl(this._value, this._then);

  final ExcelData _value;
  // ignore: unused_field
  final $Res Function(ExcelData) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
    Object? rate = freezed,
    Object? secondMeterRate = freezed,
    Object? doubleFerrule = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      secondMeterRate: secondMeterRate == freezed
          ? _value.secondMeterRate
          : secondMeterRate // ignore: cast_nullable_to_non_nullable
              as double,
      doubleFerrule: doubleFerrule == freezed
          ? _value.doubleFerrule
          : doubleFerrule // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ExcelDataCopyWith<$Res> implements $ExcelDataCopyWith<$Res> {
  factory _$ExcelDataCopyWith(
          _ExcelData value, $Res Function(_ExcelData) then) =
      __$ExcelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String core,
      String construction,
      String diameter,
      double rate,
      double secondMeterRate,
      double doubleFerrule});
}

/// @nodoc
class __$ExcelDataCopyWithImpl<$Res> extends _$ExcelDataCopyWithImpl<$Res>
    implements _$ExcelDataCopyWith<$Res> {
  __$ExcelDataCopyWithImpl(_ExcelData _value, $Res Function(_ExcelData) _then)
      : super(_value, (v) => _then(v as _ExcelData));

  @override
  _ExcelData get _value => super._value as _ExcelData;

  @override
  $Res call({
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
    Object? rate = freezed,
    Object? secondMeterRate = freezed,
    Object? doubleFerrule = freezed,
  }) {
    return _then(_ExcelData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      secondMeterRate: secondMeterRate == freezed
          ? _value.secondMeterRate
          : secondMeterRate // ignore: cast_nullable_to_non_nullable
              as double,
      doubleFerrule: doubleFerrule == freezed
          ? _value.doubleFerrule
          : doubleFerrule // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExcelData implements _ExcelData {
  _$_ExcelData(
      {required this.type,
      required this.core,
      required this.construction,
      required this.diameter,
      required this.rate,
      required this.secondMeterRate,
      required this.doubleFerrule});

  factory _$_ExcelData.fromJson(Map<String, dynamic> json) =>
      _$_$_ExcelDataFromJson(json);

  @override
  final String type;
  @override
  final String core;
  @override
  final String construction;
  @override
  final String diameter;
  @override
  final double rate;
  @override
  final double secondMeterRate;
  @override
  final double doubleFerrule;

  @override
  String toString() {
    return 'ExcelData(type: $type, core: $core, construction: $construction, diameter: $diameter, rate: $rate, secondMeterRate: $secondMeterRate, doubleFerrule: $doubleFerrule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExcelData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.core, core) ||
                const DeepCollectionEquality().equals(other.core, core)) &&
            (identical(other.construction, construction) ||
                const DeepCollectionEquality()
                    .equals(other.construction, construction)) &&
            (identical(other.diameter, diameter) ||
                const DeepCollectionEquality()
                    .equals(other.diameter, diameter)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.secondMeterRate, secondMeterRate) ||
                const DeepCollectionEquality()
                    .equals(other.secondMeterRate, secondMeterRate)) &&
            (identical(other.doubleFerrule, doubleFerrule) ||
                const DeepCollectionEquality()
                    .equals(other.doubleFerrule, doubleFerrule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(construction) ^
      const DeepCollectionEquality().hash(diameter) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(secondMeterRate) ^
      const DeepCollectionEquality().hash(doubleFerrule);

  @JsonKey(ignore: true)
  @override
  _$ExcelDataCopyWith<_ExcelData> get copyWith =>
      __$ExcelDataCopyWithImpl<_ExcelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExcelDataToJson(this);
  }
}

abstract class _ExcelData implements ExcelData {
  factory _ExcelData(
      {required String type,
      required String core,
      required String construction,
      required String diameter,
      required double rate,
      required double secondMeterRate,
      required double doubleFerrule}) = _$_ExcelData;

  factory _ExcelData.fromJson(Map<String, dynamic> json) =
      _$_ExcelData.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get core => throw _privateConstructorUsedError;
  @override
  String get construction => throw _privateConstructorUsedError;
  @override
  String get diameter => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  double get secondMeterRate => throw _privateConstructorUsedError;
  @override
  double get doubleFerrule => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExcelDataCopyWith<_ExcelData> get copyWith =>
      throw _privateConstructorUsedError;
}
