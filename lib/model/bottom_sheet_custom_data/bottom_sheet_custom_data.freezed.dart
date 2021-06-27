// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bottom_sheet_custom_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomSheetCustomData _$BottomSheetCustomDataFromJson(
    Map<String, dynamic> json) {
  return _BottomSheetCustomData.fromJson(json);
}

/// @nodoc
class _$BottomSheetCustomDataTearOff {
  const _$BottomSheetCustomDataTearOff();

  _BottomSheetCustomData call(
      {required double rate, required String coating, required int ropeId}) {
    return _BottomSheetCustomData(
      rate: rate,
      coating: coating,
      ropeId: ropeId,
    );
  }

  BottomSheetCustomData fromJson(Map<String, Object> json) {
    return BottomSheetCustomData.fromJson(json);
  }
}

/// @nodoc
const $BottomSheetCustomData = _$BottomSheetCustomDataTearOff();

/// @nodoc
mixin _$BottomSheetCustomData {
  double get rate => throw _privateConstructorUsedError;
  String get coating => throw _privateConstructorUsedError;
  int get ropeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomSheetCustomDataCopyWith<BottomSheetCustomData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetCustomDataCopyWith<$Res> {
  factory $BottomSheetCustomDataCopyWith(BottomSheetCustomData value,
          $Res Function(BottomSheetCustomData) then) =
      _$BottomSheetCustomDataCopyWithImpl<$Res>;
  $Res call({double rate, String coating, int ropeId});
}

/// @nodoc
class _$BottomSheetCustomDataCopyWithImpl<$Res>
    implements $BottomSheetCustomDataCopyWith<$Res> {
  _$BottomSheetCustomDataCopyWithImpl(this._value, this._then);

  final BottomSheetCustomData _value;
  // ignore: unused_field
  final $Res Function(BottomSheetCustomData) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? coating = freezed,
    Object? ropeId = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      coating: coating == freezed
          ? _value.coating
          : coating // ignore: cast_nullable_to_non_nullable
              as String,
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BottomSheetCustomDataCopyWith<$Res>
    implements $BottomSheetCustomDataCopyWith<$Res> {
  factory _$BottomSheetCustomDataCopyWith(_BottomSheetCustomData value,
          $Res Function(_BottomSheetCustomData) then) =
      __$BottomSheetCustomDataCopyWithImpl<$Res>;
  @override
  $Res call({double rate, String coating, int ropeId});
}

/// @nodoc
class __$BottomSheetCustomDataCopyWithImpl<$Res>
    extends _$BottomSheetCustomDataCopyWithImpl<$Res>
    implements _$BottomSheetCustomDataCopyWith<$Res> {
  __$BottomSheetCustomDataCopyWithImpl(_BottomSheetCustomData _value,
      $Res Function(_BottomSheetCustomData) _then)
      : super(_value, (v) => _then(v as _BottomSheetCustomData));

  @override
  _BottomSheetCustomData get _value => super._value as _BottomSheetCustomData;

  @override
  $Res call({
    Object? rate = freezed,
    Object? coating = freezed,
    Object? ropeId = freezed,
  }) {
    return _then(_BottomSheetCustomData(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      coating: coating == freezed
          ? _value.coating
          : coating // ignore: cast_nullable_to_non_nullable
              as String,
      ropeId: ropeId == freezed
          ? _value.ropeId
          : ropeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomSheetCustomData implements _BottomSheetCustomData {
  _$_BottomSheetCustomData(
      {required this.rate, required this.coating, required this.ropeId});

  factory _$_BottomSheetCustomData.fromJson(Map<String, dynamic> json) =>
      _$_$_BottomSheetCustomDataFromJson(json);

  @override
  final double rate;
  @override
  final String coating;
  @override
  final int ropeId;

  @override
  String toString() {
    return 'BottomSheetCustomData(rate: $rate, coating: $coating, ropeId: $ropeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomSheetCustomData &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.coating, coating) ||
                const DeepCollectionEquality()
                    .equals(other.coating, coating)) &&
            (identical(other.ropeId, ropeId) ||
                const DeepCollectionEquality().equals(other.ropeId, ropeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(coating) ^
      const DeepCollectionEquality().hash(ropeId);

  @JsonKey(ignore: true)
  @override
  _$BottomSheetCustomDataCopyWith<_BottomSheetCustomData> get copyWith =>
      __$BottomSheetCustomDataCopyWithImpl<_BottomSheetCustomData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BottomSheetCustomDataToJson(this);
  }
}

abstract class _BottomSheetCustomData implements BottomSheetCustomData {
  factory _BottomSheetCustomData(
      {required double rate,
      required String coating,
      required int ropeId}) = _$_BottomSheetCustomData;

  factory _BottomSheetCustomData.fromJson(Map<String, dynamic> json) =
      _$_BottomSheetCustomData.fromJson;

  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  String get coating => throw _privateConstructorUsedError;
  @override
  int get ropeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BottomSheetCustomDataCopyWith<_BottomSheetCustomData> get copyWith =>
      throw _privateConstructorUsedError;
}
