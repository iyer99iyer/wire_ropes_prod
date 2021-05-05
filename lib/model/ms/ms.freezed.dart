// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MS _$MSFromJson(Map<String, dynamic> json) {
  return _MS.fromJson(json);
}

/// @nodoc
class _$MSTearOff {
  const _$MSTearOff();

  _MS call(
      {String? core, String? coating, String? construction, String? diameter}) {
    return _MS(
      core: core,
      coating: coating,
      construction: construction,
      diameter: diameter,
    );
  }

  MS fromJson(Map<String, Object> json) {
    return MS.fromJson(json);
  }
}

/// @nodoc
const $MS = _$MSTearOff();

/// @nodoc
mixin _$MS {
  String? get core => throw _privateConstructorUsedError;
  String? get coating => throw _privateConstructorUsedError;
  String? get construction => throw _privateConstructorUsedError;
  String? get diameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MSCopyWith<MS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MSCopyWith<$Res> {
  factory $MSCopyWith(MS value, $Res Function(MS) then) =
      _$MSCopyWithImpl<$Res>;
  $Res call(
      {String? core, String? coating, String? construction, String? diameter});
}

/// @nodoc
class _$MSCopyWithImpl<$Res> implements $MSCopyWith<$Res> {
  _$MSCopyWithImpl(this._value, this._then);

  final MS _value;
  // ignore: unused_field
  final $Res Function(MS) _then;

  @override
  $Res call({
    Object? core = freezed,
    Object? coating = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_value.copyWith(
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      coating: coating == freezed
          ? _value.coating
          : coating // ignore: cast_nullable_to_non_nullable
              as String?,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String?,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MSCopyWith<$Res> implements $MSCopyWith<$Res> {
  factory _$MSCopyWith(_MS value, $Res Function(_MS) then) =
      __$MSCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? core, String? coating, String? construction, String? diameter});
}

/// @nodoc
class __$MSCopyWithImpl<$Res> extends _$MSCopyWithImpl<$Res>
    implements _$MSCopyWith<$Res> {
  __$MSCopyWithImpl(_MS _value, $Res Function(_MS) _then)
      : super(_value, (v) => _then(v as _MS));

  @override
  _MS get _value => super._value as _MS;

  @override
  $Res call({
    Object? core = freezed,
    Object? coating = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_MS(
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      coating: coating == freezed
          ? _value.coating
          : coating // ignore: cast_nullable_to_non_nullable
              as String?,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
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
class _$_MS implements _MS {
  _$_MS({this.core, this.coating, this.construction, this.diameter});

  factory _$_MS.fromJson(Map<String, dynamic> json) => _$_$_MSFromJson(json);

  @override
  final String? core;
  @override
  final String? coating;
  @override
  final String? construction;
  @override
  final String? diameter;

  @override
  String toString() {
    return 'MS(core: $core, coating: $coating, construction: $construction, diameter: $diameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MS &&
            (identical(other.core, core) ||
                const DeepCollectionEquality().equals(other.core, core)) &&
            (identical(other.coating, coating) ||
                const DeepCollectionEquality()
                    .equals(other.coating, coating)) &&
            (identical(other.construction, construction) ||
                const DeepCollectionEquality()
                    .equals(other.construction, construction)) &&
            (identical(other.diameter, diameter) ||
                const DeepCollectionEquality()
                    .equals(other.diameter, diameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(coating) ^
      const DeepCollectionEquality().hash(construction) ^
      const DeepCollectionEquality().hash(diameter);

  @JsonKey(ignore: true)
  @override
  _$MSCopyWith<_MS> get copyWith => __$MSCopyWithImpl<_MS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MSToJson(this);
  }
}

abstract class _MS implements MS {
  factory _MS(
      {String? core,
      String? coating,
      String? construction,
      String? diameter}) = _$_MS;

  factory _MS.fromJson(Map<String, dynamic> json) = _$_MS.fromJson;

  @override
  String? get core => throw _privateConstructorUsedError;
  @override
  String? get coating => throw _privateConstructorUsedError;
  @override
  String? get construction => throw _privateConstructorUsedError;
  @override
  String? get diameter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MSCopyWith<_MS> get copyWith => throw _privateConstructorUsedError;
}
