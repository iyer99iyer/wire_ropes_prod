// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'slings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Slings _$SlingsFromJson(Map<String, dynamic> json) {
  return _Slings.fromJson(json);
}

/// @nodoc
class _$SlingsTearOff {
  const _$SlingsTearOff();

  _Slings call(
      {int? id,
      String? mm,
      String? rate,
      String? mm2,
      String? doubleF,
      int? slingsId}) {
    return _Slings(
      id: id,
      mm: mm,
      rate: rate,
      mm2: mm2,
      doubleF: doubleF,
      slingsId: slingsId,
    );
  }

  Slings fromJson(Map<String, Object> json) {
    return Slings.fromJson(json);
  }
}

/// @nodoc
const $Slings = _$SlingsTearOff();

/// @nodoc
mixin _$Slings {
  int? get id => throw _privateConstructorUsedError;
  String? get mm => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;
  String? get mm2 => throw _privateConstructorUsedError;
  String? get doubleF => throw _privateConstructorUsedError;
  int? get slingsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlingsCopyWith<Slings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlingsCopyWith<$Res> {
  factory $SlingsCopyWith(Slings value, $Res Function(Slings) then) =
      _$SlingsCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? mm,
      String? rate,
      String? mm2,
      String? doubleF,
      int? slingsId});
}

/// @nodoc
class _$SlingsCopyWithImpl<$Res> implements $SlingsCopyWith<$Res> {
  _$SlingsCopyWithImpl(this._value, this._then);

  final Slings _value;
  // ignore: unused_field
  final $Res Function(Slings) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mm = freezed,
    Object? rate = freezed,
    Object? mm2 = freezed,
    Object? doubleF = freezed,
    Object? slingsId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mm: mm == freezed
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      mm2: mm2 == freezed
          ? _value.mm2
          : mm2 // ignore: cast_nullable_to_non_nullable
              as String?,
      doubleF: doubleF == freezed
          ? _value.doubleF
          : doubleF // ignore: cast_nullable_to_non_nullable
              as String?,
      slingsId: slingsId == freezed
          ? _value.slingsId
          : slingsId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SlingsCopyWith<$Res> implements $SlingsCopyWith<$Res> {
  factory _$SlingsCopyWith(_Slings value, $Res Function(_Slings) then) =
      __$SlingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? mm,
      String? rate,
      String? mm2,
      String? doubleF,
      int? slingsId});
}

/// @nodoc
class __$SlingsCopyWithImpl<$Res> extends _$SlingsCopyWithImpl<$Res>
    implements _$SlingsCopyWith<$Res> {
  __$SlingsCopyWithImpl(_Slings _value, $Res Function(_Slings) _then)
      : super(_value, (v) => _then(v as _Slings));

  @override
  _Slings get _value => super._value as _Slings;

  @override
  $Res call({
    Object? id = freezed,
    Object? mm = freezed,
    Object? rate = freezed,
    Object? mm2 = freezed,
    Object? doubleF = freezed,
    Object? slingsId = freezed,
  }) {
    return _then(_Slings(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mm: mm == freezed
          ? _value.mm
          : mm // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      mm2: mm2 == freezed
          ? _value.mm2
          : mm2 // ignore: cast_nullable_to_non_nullable
              as String?,
      doubleF: doubleF == freezed
          ? _value.doubleF
          : doubleF // ignore: cast_nullable_to_non_nullable
              as String?,
      slingsId: slingsId == freezed
          ? _value.slingsId
          : slingsId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slings implements _Slings {
  _$_Slings(
      {this.id, this.mm, this.rate, this.mm2, this.doubleF, this.slingsId});

  factory _$_Slings.fromJson(Map<String, dynamic> json) =>
      _$_$_SlingsFromJson(json);

  @override
  final int? id;
  @override
  final String? mm;
  @override
  final String? rate;
  @override
  final String? mm2;
  @override
  final String? doubleF;
  @override
  final int? slingsId;

  @override
  String toString() {
    return 'Slings(id: $id, mm: $mm, rate: $rate, mm2: $mm2, doubleF: $doubleF, slingsId: $slingsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Slings &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mm, mm) ||
                const DeepCollectionEquality().equals(other.mm, mm)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.mm2, mm2) ||
                const DeepCollectionEquality().equals(other.mm2, mm2)) &&
            (identical(other.doubleF, doubleF) ||
                const DeepCollectionEquality()
                    .equals(other.doubleF, doubleF)) &&
            (identical(other.slingsId, slingsId) ||
                const DeepCollectionEquality()
                    .equals(other.slingsId, slingsId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mm) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(mm2) ^
      const DeepCollectionEquality().hash(doubleF) ^
      const DeepCollectionEquality().hash(slingsId);

  @JsonKey(ignore: true)
  @override
  _$SlingsCopyWith<_Slings> get copyWith =>
      __$SlingsCopyWithImpl<_Slings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SlingsToJson(this);
  }
}

abstract class _Slings implements Slings {
  factory _Slings(
      {int? id,
      String? mm,
      String? rate,
      String? mm2,
      String? doubleF,
      int? slingsId}) = _$_Slings;

  factory _Slings.fromJson(Map<String, dynamic> json) = _$_Slings.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get mm => throw _privateConstructorUsedError;
  @override
  String? get rate => throw _privateConstructorUsedError;
  @override
  String? get mm2 => throw _privateConstructorUsedError;
  @override
  String? get doubleF => throw _privateConstructorUsedError;
  @override
  int? get slingsId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SlingsCopyWith<_Slings> get copyWith => throw _privateConstructorUsedError;
}
