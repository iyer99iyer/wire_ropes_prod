// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_count_excel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewCountExcelData _$ViewCountExcelDataFromJson(Map<String, dynamic> json) {
  return _ViewCountExcelData.fromJson(json);
}

/// @nodoc
class _$ViewCountExcelDataTearOff {
  const _$ViewCountExcelDataTearOff();

  _ViewCountExcelData call(
      {required int count,
      required String type,
      required String core,
      required String construction}) {
    return _ViewCountExcelData(
      count: count,
      type: type,
      core: core,
      construction: construction,
    );
  }

  ViewCountExcelData fromJson(Map<String, Object> json) {
    return ViewCountExcelData.fromJson(json);
  }
}

/// @nodoc
const $ViewCountExcelData = _$ViewCountExcelDataTearOff();

/// @nodoc
mixin _$ViewCountExcelData {
  int get count => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  String get construction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewCountExcelDataCopyWith<ViewCountExcelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewCountExcelDataCopyWith<$Res> {
  factory $ViewCountExcelDataCopyWith(
          ViewCountExcelData value, $Res Function(ViewCountExcelData) then) =
      _$ViewCountExcelDataCopyWithImpl<$Res>;
  $Res call({int count, String type, String core, String construction});
}

/// @nodoc
class _$ViewCountExcelDataCopyWithImpl<$Res>
    implements $ViewCountExcelDataCopyWith<$Res> {
  _$ViewCountExcelDataCopyWithImpl(this._value, this._then);

  final ViewCountExcelData _value;
  // ignore: unused_field
  final $Res Function(ViewCountExcelData) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
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
abstract class _$ViewCountExcelDataCopyWith<$Res>
    implements $ViewCountExcelDataCopyWith<$Res> {
  factory _$ViewCountExcelDataCopyWith(
          _ViewCountExcelData value, $Res Function(_ViewCountExcelData) then) =
      __$ViewCountExcelDataCopyWithImpl<$Res>;
  @override
  $Res call({int count, String type, String core, String construction});
}

/// @nodoc
class __$ViewCountExcelDataCopyWithImpl<$Res>
    extends _$ViewCountExcelDataCopyWithImpl<$Res>
    implements _$ViewCountExcelDataCopyWith<$Res> {
  __$ViewCountExcelDataCopyWithImpl(
      _ViewCountExcelData _value, $Res Function(_ViewCountExcelData) _then)
      : super(_value, (v) => _then(v as _ViewCountExcelData));

  @override
  _ViewCountExcelData get _value => super._value as _ViewCountExcelData;

  @override
  $Res call({
    Object? count = freezed,
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
  }) {
    return _then(_ViewCountExcelData(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
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
class _$_ViewCountExcelData implements _ViewCountExcelData {
  _$_ViewCountExcelData(
      {required this.count,
      required this.type,
      required this.core,
      required this.construction});

  factory _$_ViewCountExcelData.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewCountExcelDataFromJson(json);

  @override
  final int count;
  @override
  final String type;
  @override
  final String core;
  @override
  final String construction;

  @override
  String toString() {
    return 'ViewCountExcelData(count: $count, type: $type, core: $core, construction: $construction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewCountExcelData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
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
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(construction);

  @JsonKey(ignore: true)
  @override
  _$ViewCountExcelDataCopyWith<_ViewCountExcelData> get copyWith =>
      __$ViewCountExcelDataCopyWithImpl<_ViewCountExcelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewCountExcelDataToJson(this);
  }
}

abstract class _ViewCountExcelData implements ViewCountExcelData {
  factory _ViewCountExcelData(
      {required int count,
      required String type,
      required String core,
      required String construction}) = _$_ViewCountExcelData;

  factory _ViewCountExcelData.fromJson(Map<String, dynamic> json) =
      _$_ViewCountExcelData.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get core => throw _privateConstructorUsedError;
  @override
  String get construction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewCountExcelDataCopyWith<_ViewCountExcelData> get copyWith =>
      throw _privateConstructorUsedError;
}
