// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ropes_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RopesRate _$RopesRateFromJson(Map<String, dynamic> json) {
  return _RopesRate.fromJson(json);
}

/// @nodoc
class _$RopesRateTearOff {
  const _$RopesRateTearOff();

  _RopesRate call(
      {required int ropeId,
      required String diameter,
      required double rate,
      required int selectedRopeTypeId}) {
    return _RopesRate(
      ropeId: ropeId,
      diameter: diameter,
      rate: rate,
      selectedRopeTypeId: selectedRopeTypeId,
    );
  }

  RopesRate fromJson(Map<String, Object> json) {
    return RopesRate.fromJson(json);
  }
}

/// @nodoc
const $RopesRate = _$RopesRateTearOff();

/// @nodoc
mixin _$RopesRate {
  int get ropeId => throw _privateConstructorUsedError;
  String get diameter => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  int get selectedRopeTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RopesRateCopyWith<RopesRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RopesRateCopyWith<$Res> {
  factory $RopesRateCopyWith(RopesRate value, $Res Function(RopesRate) then) =
      _$RopesRateCopyWithImpl<$Res>;
  $Res call({int ropeId, String diameter, double rate, int selectedRopeTypeId});
}

/// @nodoc
class _$RopesRateCopyWithImpl<$Res> implements $RopesRateCopyWith<$Res> {
  _$RopesRateCopyWithImpl(this._value, this._then);

  final RopesRate _value;
  // ignore: unused_field
  final $Res Function(RopesRate) _then;

  @override
  $Res call({
    Object? ropeId = freezed,
    Object? diameter = freezed,
    Object? rate = freezed,
    Object? selectedRopeTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      selectedRopeTypeId: selectedRopeTypeId == freezed
          ? _value.selectedRopeTypeId
          : selectedRopeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RopesRateCopyWith<$Res> implements $RopesRateCopyWith<$Res> {
  factory _$RopesRateCopyWith(
          _RopesRate value, $Res Function(_RopesRate) then) =
      __$RopesRateCopyWithImpl<$Res>;
  @override
  $Res call({int ropeId, String diameter, double rate, int selectedRopeTypeId});
}

/// @nodoc
class __$RopesRateCopyWithImpl<$Res> extends _$RopesRateCopyWithImpl<$Res>
    implements _$RopesRateCopyWith<$Res> {
  __$RopesRateCopyWithImpl(_RopesRate _value, $Res Function(_RopesRate) _then)
      : super(_value, (v) => _then(v as _RopesRate));

  @override
  _RopesRate get _value => super._value as _RopesRate;

  @override
  $Res call({
    Object? ropeId = freezed,
    Object? diameter = freezed,
    Object? rate = freezed,
    Object? selectedRopeTypeId = freezed,
  }) {
    return _then(_RopesRate(
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      selectedRopeTypeId: selectedRopeTypeId == freezed
          ? _value.selectedRopeTypeId
          : selectedRopeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RopesRate implements _RopesRate {
  _$_RopesRate(
      {required this.ropeId,
      required this.diameter,
      required this.rate,
      required this.selectedRopeTypeId});

  factory _$_RopesRate.fromJson(Map<String, dynamic> json) =>
      _$_$_RopesRateFromJson(json);

  @override
  final int ropeId;
  @override
  final String diameter;
  @override
  final double rate;
  @override
  final int selectedRopeTypeId;

  @override
  String toString() {
    return 'RopesRate(ropeId: $ropeId, diameter: $diameter, rate: $rate, selectedRopeTypeId: $selectedRopeTypeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RopesRate &&
            (identical(other.ropeId, ropeId) ||
                const DeepCollectionEquality().equals(other.ropeId, ropeId)) &&
            (identical(other.diameter, diameter) ||
                const DeepCollectionEquality()
                    .equals(other.diameter, diameter)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.selectedRopeTypeId, selectedRopeTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedRopeTypeId, selectedRopeTypeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ropeId) ^
      const DeepCollectionEquality().hash(diameter) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(selectedRopeTypeId);

  @JsonKey(ignore: true)
  @override
  _$RopesRateCopyWith<_RopesRate> get copyWith =>
      __$RopesRateCopyWithImpl<_RopesRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RopesRateToJson(this);
  }
}

abstract class _RopesRate implements RopesRate {
  factory _RopesRate(
      {required int ropeId,
      required String diameter,
      required double rate,
      required int selectedRopeTypeId}) = _$_RopesRate;

  factory _RopesRate.fromJson(Map<String, dynamic> json) =
      _$_RopesRate.fromJson;

  @override
  int get ropeId => throw _privateConstructorUsedError;
  @override
  String get diameter => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  int get selectedRopeTypeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RopesRateCopyWith<_RopesRate> get copyWith =>
      throw _privateConstructorUsedError;
}
