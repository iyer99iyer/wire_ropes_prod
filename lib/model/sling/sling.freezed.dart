// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sling.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sling _$SlingFromJson(Map<String, dynamic> json) {
  return _Sling.fromJson(json);
}

/// @nodoc
class _$SlingTearOff {
  const _$SlingTearOff();

  _Sling call(
      {String? core, String? coating, String? construction, String? diameter}) {
    return _Sling(
      core: core,
      coating: coating,
      construction: construction,
      diameter: diameter,
    );
  }

  Sling fromJson(Map<String, Object> json) {
    return Sling.fromJson(json);
  }
}

/// @nodoc
const $Sling = _$SlingTearOff();

/// @nodoc
mixin _$Sling {
  String? get core => throw _privateConstructorUsedError;
  String? get coating => throw _privateConstructorUsedError;
  String? get construction => throw _privateConstructorUsedError;
  String? get diameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlingCopyWith<Sling> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlingCopyWith<$Res> {
  factory $SlingCopyWith(Sling value, $Res Function(Sling) then) =
      _$SlingCopyWithImpl<$Res>;
  $Res call(
      {String? core, String? coating, String? construction, String? diameter});
}

/// @nodoc
class _$SlingCopyWithImpl<$Res> implements $SlingCopyWith<$Res> {
  _$SlingCopyWithImpl(this._value, this._then);

  final Sling _value;
  // ignore: unused_field
  final $Res Function(Sling) _then;

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
abstract class _$SlingCopyWith<$Res> implements $SlingCopyWith<$Res> {
  factory _$SlingCopyWith(_Sling value, $Res Function(_Sling) then) =
      __$SlingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? core, String? coating, String? construction, String? diameter});
}

/// @nodoc
class __$SlingCopyWithImpl<$Res> extends _$SlingCopyWithImpl<$Res>
    implements _$SlingCopyWith<$Res> {
  __$SlingCopyWithImpl(_Sling _value, $Res Function(_Sling) _then)
      : super(_value, (v) => _then(v as _Sling));

  @override
  _Sling get _value => super._value as _Sling;

  @override
  $Res call({
    Object? core = freezed,
    Object? coating = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_Sling(
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
class _$_Sling implements _Sling {
  _$_Sling({this.core, this.coating, this.construction, this.diameter});

  factory _$_Sling.fromJson(Map<String, dynamic> json) =>
      _$_$_SlingFromJson(json);

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
    return 'Sling(core: $core, coating: $coating, construction: $construction, diameter: $diameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sling &&
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
  _$SlingCopyWith<_Sling> get copyWith =>
      __$SlingCopyWithImpl<_Sling>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SlingToJson(this);
  }
}

abstract class _Sling implements Sling {
  factory _Sling(
      {String? core,
      String? coating,
      String? construction,
      String? diameter}) = _$_Sling;

  factory _Sling.fromJson(Map<String, dynamic> json) = _$_Sling.fromJson;

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
  _$SlingCopyWith<_Sling> get copyWith => throw _privateConstructorUsedError;
}
