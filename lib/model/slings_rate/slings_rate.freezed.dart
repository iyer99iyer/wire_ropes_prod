// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'slings_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlingsRate _$SlingsRateFromJson(Map<String, dynamic> json) {
  return _SlingsRate.fromJson(json);
}

/// @nodoc
class _$SlingsRateTearOff {
  const _$SlingsRateTearOff();

  _SlingsRate call(
      {required int slingsId,
      required double secondMeterRate,
      required double doubleFerrule,
      required int ropeId}) {
    return _SlingsRate(
      slingsId: slingsId,
      secondMeterRate: secondMeterRate,
      doubleFerrule: doubleFerrule,
      ropeId: ropeId,
    );
  }

  SlingsRate fromJson(Map<String, Object> json) {
    return SlingsRate.fromJson(json);
  }
}

/// @nodoc
const $SlingsRate = _$SlingsRateTearOff();

/// @nodoc
mixin _$SlingsRate {
  int get slingsId => throw _privateConstructorUsedError;
  double get secondMeterRate => throw _privateConstructorUsedError;
  double get doubleFerrule => throw _privateConstructorUsedError;
  int get ropeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlingsRateCopyWith<SlingsRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlingsRateCopyWith<$Res> {
  factory $SlingsRateCopyWith(
          SlingsRate value, $Res Function(SlingsRate) then) =
      _$SlingsRateCopyWithImpl<$Res>;
  $Res call(
      {int slingsId, double secondMeterRate, double doubleFerrule, int ropeId});
}

/// @nodoc
class _$SlingsRateCopyWithImpl<$Res> implements $SlingsRateCopyWith<$Res> {
  _$SlingsRateCopyWithImpl(this._value, this._then);

  final SlingsRate _value;
  // ignore: unused_field
  final $Res Function(SlingsRate) _then;

  @override
  $Res call({
    Object? slingsId = freezed,
    Object? secondMeterRate = freezed,
    Object? doubleFerrule = freezed,
    Object? ropeId = freezed,
  }) {
    return _then(_value.copyWith(
      slingsId: slingsId == freezed
          ? _value.slingsId
          : slingsId // ignore: cast_nullable_to_non_nullable
              as int,
      secondMeterRate: secondMeterRate == freezed
          ? _value.secondMeterRate
          : secondMeterRate // ignore: cast_nullable_to_non_nullable
              as double,
      doubleFerrule: doubleFerrule == freezed
          ? _value.doubleFerrule
          : doubleFerrule // ignore: cast_nullable_to_non_nullable
              as double,
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SlingsRateCopyWith<$Res> implements $SlingsRateCopyWith<$Res> {
  factory _$SlingsRateCopyWith(
          _SlingsRate value, $Res Function(_SlingsRate) then) =
      __$SlingsRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int slingsId, double secondMeterRate, double doubleFerrule, int ropeId});
}

/// @nodoc
class __$SlingsRateCopyWithImpl<$Res> extends _$SlingsRateCopyWithImpl<$Res>
    implements _$SlingsRateCopyWith<$Res> {
  __$SlingsRateCopyWithImpl(
      _SlingsRate _value, $Res Function(_SlingsRate) _then)
      : super(_value, (v) => _then(v as _SlingsRate));

  @override
  _SlingsRate get _value => super._value as _SlingsRate;

  @override
  $Res call({
    Object? slingsId = freezed,
    Object? secondMeterRate = freezed,
    Object? doubleFerrule = freezed,
    Object? ropeId = freezed,
  }) {
    return _then(_SlingsRate(
      slingsId: slingsId == freezed
          ? _value.slingsId
          : slingsId // ignore: cast_nullable_to_non_nullable
              as int,
      secondMeterRate: secondMeterRate == freezed
          ? _value.secondMeterRate
          : secondMeterRate // ignore: cast_nullable_to_non_nullable
              as double,
      doubleFerrule: doubleFerrule == freezed
          ? _value.doubleFerrule
          : doubleFerrule // ignore: cast_nullable_to_non_nullable
              as double,
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlingsRate implements _SlingsRate {
  _$_SlingsRate(
      {required this.slingsId,
      required this.secondMeterRate,
      required this.doubleFerrule,
      required this.ropeId});

  factory _$_SlingsRate.fromJson(Map<String, dynamic> json) =>
      _$_$_SlingsRateFromJson(json);

  @override
  final int slingsId;
  @override
  final double secondMeterRate;
  @override
  final double doubleFerrule;
  @override
  final int ropeId;

  @override
  String toString() {
    return 'SlingsRate(slingsId: $slingsId, secondMeterRate: $secondMeterRate, doubleFerrule: $doubleFerrule, ropeId: $ropeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SlingsRate &&
            (identical(other.slingsId, slingsId) ||
                const DeepCollectionEquality()
                    .equals(other.slingsId, slingsId)) &&
            (identical(other.secondMeterRate, secondMeterRate) ||
                const DeepCollectionEquality()
                    .equals(other.secondMeterRate, secondMeterRate)) &&
            (identical(other.doubleFerrule, doubleFerrule) ||
                const DeepCollectionEquality()
                    .equals(other.doubleFerrule, doubleFerrule)) &&
            (identical(other.ropeId, ropeId) ||
                const DeepCollectionEquality().equals(other.ropeId, ropeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slingsId) ^
      const DeepCollectionEquality().hash(secondMeterRate) ^
      const DeepCollectionEquality().hash(doubleFerrule) ^
      const DeepCollectionEquality().hash(ropeId);

  @JsonKey(ignore: true)
  @override
  _$SlingsRateCopyWith<_SlingsRate> get copyWith =>
      __$SlingsRateCopyWithImpl<_SlingsRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SlingsRateToJson(this);
  }
}

abstract class _SlingsRate implements SlingsRate {
  factory _SlingsRate(
      {required int slingsId,
      required double secondMeterRate,
      required double doubleFerrule,
      required int ropeId}) = _$_SlingsRate;

  factory _SlingsRate.fromJson(Map<String, dynamic> json) =
      _$_SlingsRate.fromJson;

  @override
  int get slingsId => throw _privateConstructorUsedError;
  @override
  double get secondMeterRate => throw _privateConstructorUsedError;
  @override
  double get doubleFerrule => throw _privateConstructorUsedError;
  @override
  int get ropeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlingsRateCopyWith<_SlingsRate> get copyWith =>
      throw _privateConstructorUsedError;
}
