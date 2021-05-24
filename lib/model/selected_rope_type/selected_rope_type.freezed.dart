// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'selected_rope_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedRopeType _$SelectedRopeTypeFromJson(Map<String, dynamic> json) {
  return _SelectedRopeType.fromJson(json);
}

/// @nodoc
class _$SelectedRopeTypeTearOff {
  const _$SelectedRopeTypeTearOff();

  _SelectedRopeType call(
      {required int selectedRopeTypeId,
      required String type,
      required String core,
      required String construction}) {
    return _SelectedRopeType(
      selectedRopeTypeId: selectedRopeTypeId,
      type: type,
      core: core,
      construction: construction,
    );
  }

  SelectedRopeType fromJson(Map<String, Object> json) {
    return SelectedRopeType.fromJson(json);
  }
}

/// @nodoc
const $SelectedRopeType = _$SelectedRopeTypeTearOff();

/// @nodoc
mixin _$SelectedRopeType {
  int get selectedRopeTypeId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  String get construction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedRopeTypeCopyWith<SelectedRopeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedRopeTypeCopyWith<$Res> {
  factory $SelectedRopeTypeCopyWith(
          SelectedRopeType value, $Res Function(SelectedRopeType) then) =
      _$SelectedRopeTypeCopyWithImpl<$Res>;
  $Res call(
      {int selectedRopeTypeId, String type, String core, String construction});
}

/// @nodoc
class _$SelectedRopeTypeCopyWithImpl<$Res>
    implements $SelectedRopeTypeCopyWith<$Res> {
  _$SelectedRopeTypeCopyWithImpl(this._value, this._then);

  final SelectedRopeType _value;
  // ignore: unused_field
  final $Res Function(SelectedRopeType) _then;

  @override
  $Res call({
    Object? selectedRopeTypeId = freezed,
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
  }) {
    return _then(_value.copyWith(
      selectedRopeTypeId: selectedRopeTypeId == freezed
          ? _value.selectedRopeTypeId
          : selectedRopeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$SelectedRopeTypeCopyWith<$Res>
    implements $SelectedRopeTypeCopyWith<$Res> {
  factory _$SelectedRopeTypeCopyWith(
          _SelectedRopeType value, $Res Function(_SelectedRopeType) then) =
      __$SelectedRopeTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedRopeTypeId, String type, String core, String construction});
}

/// @nodoc
class __$SelectedRopeTypeCopyWithImpl<$Res>
    extends _$SelectedRopeTypeCopyWithImpl<$Res>
    implements _$SelectedRopeTypeCopyWith<$Res> {
  __$SelectedRopeTypeCopyWithImpl(
      _SelectedRopeType _value, $Res Function(_SelectedRopeType) _then)
      : super(_value, (v) => _then(v as _SelectedRopeType));

  @override
  _SelectedRopeType get _value => super._value as _SelectedRopeType;

  @override
  $Res call({
    Object? selectedRopeTypeId = freezed,
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
  }) {
    return _then(_SelectedRopeType(
      selectedRopeTypeId: selectedRopeTypeId == freezed
          ? _value.selectedRopeTypeId
          : selectedRopeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedRopeType implements _SelectedRopeType {
  _$_SelectedRopeType(
      {required this.selectedRopeTypeId,
      required this.type,
      required this.core,
      required this.construction});

  factory _$_SelectedRopeType.fromJson(Map<String, dynamic> json) =>
      _$_$_SelectedRopeTypeFromJson(json);

  @override
  final int selectedRopeTypeId;
  @override
  final String type;
  @override
  final String core;
  @override
  final String construction;

  @override
  String toString() {
    return 'SelectedRopeType(selectedRopeTypeId: $selectedRopeTypeId, type: $type, core: $core, construction: $construction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedRopeType &&
            (identical(other.selectedRopeTypeId, selectedRopeTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedRopeTypeId, selectedRopeTypeId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.core, core) ||
                const DeepCollectionEquality().equals(other.core, core)) &&
            (identical(other.construction, construction) ||
                const DeepCollectionEquality()
                    .equals(other.construction, construction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedRopeTypeId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(construction);

  @JsonKey(ignore: true)
  @override
  _$SelectedRopeTypeCopyWith<_SelectedRopeType> get copyWith =>
      __$SelectedRopeTypeCopyWithImpl<_SelectedRopeType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelectedRopeTypeToJson(this);
  }
}

abstract class _SelectedRopeType implements SelectedRopeType {
  factory _SelectedRopeType(
      {required int selectedRopeTypeId,
      required String type,
      required String core,
      required String construction}) = _$_SelectedRopeType;

  factory _SelectedRopeType.fromJson(Map<String, dynamic> json) =
      _$_SelectedRopeType.fromJson;

  @override
  int get selectedRopeTypeId => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get core => throw _privateConstructorUsedError;
  @override
  String get construction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedRopeTypeCopyWith<_SelectedRopeType> get copyWith =>
      throw _privateConstructorUsedError;
}
