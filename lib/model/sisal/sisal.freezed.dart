// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sisal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sisal _$SisalFromJson(Map<String, dynamic> json) {
  return _Sisal.fromJson(json);
}

/// @nodoc
class _$SisalTearOff {
  const _$SisalTearOff();

  _Sisal call({String? coreConstruction, String? diameter}) {
    return _Sisal(
      coreConstruction: coreConstruction,
      diameter: diameter,
    );
  }

  Sisal fromJson(Map<String, Object> json) {
    return Sisal.fromJson(json);
  }
}

/// @nodoc
const $Sisal = _$SisalTearOff();

/// @nodoc
mixin _$Sisal {
  String? get coreConstruction => throw _privateConstructorUsedError;
  String? get diameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SisalCopyWith<Sisal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SisalCopyWith<$Res> {
  factory $SisalCopyWith(Sisal value, $Res Function(Sisal) then) =
      _$SisalCopyWithImpl<$Res>;
  $Res call({String? coreConstruction, String? diameter});
}

/// @nodoc
class _$SisalCopyWithImpl<$Res> implements $SisalCopyWith<$Res> {
  _$SisalCopyWithImpl(this._value, this._then);

  final Sisal _value;
  // ignore: unused_field
  final $Res Function(Sisal) _then;

  @override
  $Res call({
    Object? coreConstruction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_value.copyWith(
      coreConstruction: coreConstruction == freezed
          ? _value.coreConstruction
          : coreConstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SisalCopyWith<$Res> implements $SisalCopyWith<$Res> {
  factory _$SisalCopyWith(_Sisal value, $Res Function(_Sisal) then) =
      __$SisalCopyWithImpl<$Res>;
  @override
  $Res call({String? coreConstruction, String? diameter});
}

/// @nodoc
class __$SisalCopyWithImpl<$Res> extends _$SisalCopyWithImpl<$Res>
    implements _$SisalCopyWith<$Res> {
  __$SisalCopyWithImpl(_Sisal _value, $Res Function(_Sisal) _then)
      : super(_value, (v) => _then(v as _Sisal));

  @override
  _Sisal get _value => super._value as _Sisal;

  @override
  $Res call({
    Object? coreConstruction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_Sisal(
      coreConstruction: coreConstruction == freezed
          ? _value.coreConstruction
          : coreConstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sisal implements _Sisal {
  _$_Sisal({this.coreConstruction, this.diameter});

  factory _$_Sisal.fromJson(Map<String, dynamic> json) =>
      _$_$_SisalFromJson(json);

  @override
  final String? coreConstruction;
  @override
  final String? diameter;

  @override
  String toString() {
    return 'Sisal(coreConstruction: $coreConstruction, diameter: $diameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sisal &&
            (identical(other.coreConstruction, coreConstruction) ||
                const DeepCollectionEquality()
                    .equals(other.coreConstruction, coreConstruction)) &&
            (identical(other.diameter, diameter) ||
                const DeepCollectionEquality()
                    .equals(other.diameter, diameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coreConstruction) ^
      const DeepCollectionEquality().hash(diameter);

  @JsonKey(ignore: true)
  @override
  _$SisalCopyWith<_Sisal> get copyWith =>
      __$SisalCopyWithImpl<_Sisal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SisalToJson(this);
  }
}

abstract class _Sisal implements Sisal {
  factory _Sisal({String? coreConstruction, String? diameter}) = _$_Sisal;

  factory _Sisal.fromJson(Map<String, dynamic> json) = _$_Sisal.fromJson;

  @override
  String? get coreConstruction => throw _privateConstructorUsedError;
  @override
  String? get diameter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SisalCopyWith<_Sisal> get copyWith => throw _privateConstructorUsedError;
}
