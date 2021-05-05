// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wire_ropes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WireRopes _$WireRopesFromJson(Map<String, dynamic> json) {
  return _WireRopes.fromJson(json);
}

/// @nodoc
class _$WireRopesTearOff {
  const _$WireRopesTearOff();

  _WireRopes call({int? id, String? mm, String? rate, int? rateId}) {
    return _WireRopes(
      id: id,
      mm: mm,
      rate: rate,
      rateId: rateId,
    );
  }

  WireRopes fromJson(Map<String, Object> json) {
    return WireRopes.fromJson(json);
  }
}

/// @nodoc
const $WireRopes = _$WireRopesTearOff();

/// @nodoc
mixin _$WireRopes {
  int? get id => throw _privateConstructorUsedError;
  String? get mm => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;
  int? get rateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WireRopesCopyWith<WireRopes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WireRopesCopyWith<$Res> {
  factory $WireRopesCopyWith(WireRopes value, $Res Function(WireRopes) then) =
      _$WireRopesCopyWithImpl<$Res>;
  $Res call({int? id, String? mm, String? rate, int? rateId});
}

/// @nodoc
class _$WireRopesCopyWithImpl<$Res> implements $WireRopesCopyWith<$Res> {
  _$WireRopesCopyWithImpl(this._value, this._then);

  final WireRopes _value;
  // ignore: unused_field
  final $Res Function(WireRopes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mm = freezed,
    Object? rate = freezed,
    Object? rateId = freezed,
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
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$WireRopesCopyWith<$Res> implements $WireRopesCopyWith<$Res> {
  factory _$WireRopesCopyWith(
          _WireRopes value, $Res Function(_WireRopes) then) =
      __$WireRopesCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? mm, String? rate, int? rateId});
}

/// @nodoc
class __$WireRopesCopyWithImpl<$Res> extends _$WireRopesCopyWithImpl<$Res>
    implements _$WireRopesCopyWith<$Res> {
  __$WireRopesCopyWithImpl(_WireRopes _value, $Res Function(_WireRopes) _then)
      : super(_value, (v) => _then(v as _WireRopes));

  @override
  _WireRopes get _value => super._value as _WireRopes;

  @override
  $Res call({
    Object? id = freezed,
    Object? mm = freezed,
    Object? rate = freezed,
    Object? rateId = freezed,
  }) {
    return _then(_WireRopes(
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
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WireRopes implements _WireRopes {
  _$_WireRopes({this.id, this.mm, this.rate, this.rateId});

  factory _$_WireRopes.fromJson(Map<String, dynamic> json) =>
      _$_$_WireRopesFromJson(json);

  @override
  final int? id;
  @override
  final String? mm;
  @override
  final String? rate;
  @override
  final int? rateId;

  @override
  String toString() {
    return 'WireRopes(id: $id, mm: $mm, rate: $rate, rateId: $rateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WireRopes &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mm, mm) ||
                const DeepCollectionEquality().equals(other.mm, mm)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.rateId, rateId) ||
                const DeepCollectionEquality().equals(other.rateId, rateId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mm) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(rateId);

  @JsonKey(ignore: true)
  @override
  _$WireRopesCopyWith<_WireRopes> get copyWith =>
      __$WireRopesCopyWithImpl<_WireRopes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WireRopesToJson(this);
  }
}

abstract class _WireRopes implements WireRopes {
  factory _WireRopes({int? id, String? mm, String? rate, int? rateId}) =
      _$_WireRopes;

  factory _WireRopes.fromJson(Map<String, dynamic> json) =
      _$_WireRopes.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get mm => throw _privateConstructorUsedError;
  @override
  String? get rate => throw _privateConstructorUsedError;
  @override
  int? get rateId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WireRopesCopyWith<_WireRopes> get copyWith =>
      throw _privateConstructorUsedError;
}
