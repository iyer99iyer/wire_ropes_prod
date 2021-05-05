// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wire_ropes_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WireRopesType _$WireRopesTypeFromJson(Map<String, dynamic> json) {
  return _WireRopesType.fromJson(json);
}

/// @nodoc
class _$WireRopesTypeTearOff {
  const _$WireRopesTypeTearOff();

  _WireRopesType call(
      {int? id, String? core, String? construction, String? type}) {
    return _WireRopesType(
      id: id,
      core: core,
      construction: construction,
      type: type,
    );
  }

  WireRopesType fromJson(Map<String, Object> json) {
    return WireRopesType.fromJson(json);
  }
}

/// @nodoc
const $WireRopesType = _$WireRopesTypeTearOff();

/// @nodoc
mixin _$WireRopesType {
  int? get id => throw _privateConstructorUsedError;
  String? get core => throw _privateConstructorUsedError;
  String? get construction => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WireRopesTypeCopyWith<WireRopesType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WireRopesTypeCopyWith<$Res> {
  factory $WireRopesTypeCopyWith(
          WireRopesType value, $Res Function(WireRopesType) then) =
      _$WireRopesTypeCopyWithImpl<$Res>;
  $Res call({int? id, String? core, String? construction, String? type});
}

/// @nodoc
class _$WireRopesTypeCopyWithImpl<$Res>
    implements $WireRopesTypeCopyWith<$Res> {
  _$WireRopesTypeCopyWithImpl(this._value, this._then);

  final WireRopesType _value;
  // ignore: unused_field
  final $Res Function(WireRopesType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WireRopesTypeCopyWith<$Res>
    implements $WireRopesTypeCopyWith<$Res> {
  factory _$WireRopesTypeCopyWith(
          _WireRopesType value, $Res Function(_WireRopesType) then) =
      __$WireRopesTypeCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? core, String? construction, String? type});
}

/// @nodoc
class __$WireRopesTypeCopyWithImpl<$Res>
    extends _$WireRopesTypeCopyWithImpl<$Res>
    implements _$WireRopesTypeCopyWith<$Res> {
  __$WireRopesTypeCopyWithImpl(
      _WireRopesType _value, $Res Function(_WireRopesType) _then)
      : super(_value, (v) => _then(v as _WireRopesType));

  @override
  _WireRopesType get _value => super._value as _WireRopesType;

  @override
  $Res call({
    Object? id = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? type = freezed,
  }) {
    return _then(_WireRopesType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WireRopesType implements _WireRopesType {
  _$_WireRopesType({this.id, this.core, this.construction, this.type});

  factory _$_WireRopesType.fromJson(Map<String, dynamic> json) =>
      _$_$_WireRopesTypeFromJson(json);

  @override
  final int? id;
  @override
  final String? core;
  @override
  final String? construction;
  @override
  final String? type;

  @override
  String toString() {
    return 'WireRopesType(id: $id, core: $core, construction: $construction, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WireRopesType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.core, core) ||
                const DeepCollectionEquality().equals(other.core, core)) &&
            (identical(other.construction, construction) ||
                const DeepCollectionEquality()
                    .equals(other.construction, construction)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(construction) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$WireRopesTypeCopyWith<_WireRopesType> get copyWith =>
      __$WireRopesTypeCopyWithImpl<_WireRopesType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WireRopesTypeToJson(this);
  }
}

abstract class _WireRopesType implements WireRopesType {
  factory _WireRopesType(
      {int? id,
      String? core,
      String? construction,
      String? type}) = _$_WireRopesType;

  factory _WireRopesType.fromJson(Map<String, dynamic> json) =
      _$_WireRopesType.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get core => throw _privateConstructorUsedError;
  @override
  String? get construction => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WireRopesTypeCopyWith<_WireRopesType> get copyWith =>
      throw _privateConstructorUsedError;
}
