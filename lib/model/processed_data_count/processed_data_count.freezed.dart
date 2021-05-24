// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'processed_data_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProcessedDataCount _$ProcessedDataCountFromJson(Map<String, dynamic> json) {
  return _ProcessedDataCount.fromJson(json);
}

/// @nodoc
class _$ProcessedDataCountTearOff {
  const _$ProcessedDataCountTearOff();

  _ProcessedDataCount call(
      {required String type,
      required String core,
      required String construction,
      required int count}) {
    return _ProcessedDataCount(
      type: type,
      core: core,
      construction: construction,
      count: count,
    );
  }

  ProcessedDataCount fromJson(Map<String, Object> json) {
    return ProcessedDataCount.fromJson(json);
  }
}

/// @nodoc
const $ProcessedDataCount = _$ProcessedDataCountTearOff();

/// @nodoc
mixin _$ProcessedDataCount {
  String get type => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  String get construction => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessedDataCountCopyWith<ProcessedDataCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessedDataCountCopyWith<$Res> {
  factory $ProcessedDataCountCopyWith(
          ProcessedDataCount value, $Res Function(ProcessedDataCount) then) =
      _$ProcessedDataCountCopyWithImpl<$Res>;
  $Res call({String type, String core, String construction, int count});
}

/// @nodoc
class _$ProcessedDataCountCopyWithImpl<$Res>
    implements $ProcessedDataCountCopyWith<$Res> {
  _$ProcessedDataCountCopyWithImpl(this._value, this._then);

  final ProcessedDataCount _value;
  // ignore: unused_field
  final $Res Function(ProcessedDataCount) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
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
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProcessedDataCountCopyWith<$Res>
    implements $ProcessedDataCountCopyWith<$Res> {
  factory _$ProcessedDataCountCopyWith(
          _ProcessedDataCount value, $Res Function(_ProcessedDataCount) then) =
      __$ProcessedDataCountCopyWithImpl<$Res>;
  @override
  $Res call({String type, String core, String construction, int count});
}

/// @nodoc
class __$ProcessedDataCountCopyWithImpl<$Res>
    extends _$ProcessedDataCountCopyWithImpl<$Res>
    implements _$ProcessedDataCountCopyWith<$Res> {
  __$ProcessedDataCountCopyWithImpl(
      _ProcessedDataCount _value, $Res Function(_ProcessedDataCount) _then)
      : super(_value, (v) => _then(v as _ProcessedDataCount));

  @override
  _ProcessedDataCount get _value => super._value as _ProcessedDataCount;

  @override
  $Res call({
    Object? type = freezed,
    Object? core = freezed,
    Object? construction = freezed,
    Object? count = freezed,
  }) {
    return _then(_ProcessedDataCount(
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
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessedDataCount implements _ProcessedDataCount {
  _$_ProcessedDataCount(
      {required this.type,
      required this.core,
      required this.construction,
      required this.count});

  factory _$_ProcessedDataCount.fromJson(Map<String, dynamic> json) =>
      _$_$_ProcessedDataCountFromJson(json);

  @override
  final String type;
  @override
  final String core;
  @override
  final String construction;
  @override
  final int count;

  @override
  String toString() {
    return 'ProcessedDataCount(type: $type, core: $core, construction: $construction, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProcessedDataCount &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.core, core) ||
                const DeepCollectionEquality().equals(other.core, core)) &&
            (identical(other.construction, construction) ||
                const DeepCollectionEquality()
                    .equals(other.construction, construction)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(core) ^
      const DeepCollectionEquality().hash(construction) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$ProcessedDataCountCopyWith<_ProcessedDataCount> get copyWith =>
      __$ProcessedDataCountCopyWithImpl<_ProcessedDataCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProcessedDataCountToJson(this);
  }
}

abstract class _ProcessedDataCount implements ProcessedDataCount {
  factory _ProcessedDataCount(
      {required String type,
      required String core,
      required String construction,
      required int count}) = _$_ProcessedDataCount;

  factory _ProcessedDataCount.fromJson(Map<String, dynamic> json) =
      _$_ProcessedDataCount.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get core => throw _privateConstructorUsedError;
  @override
  String get construction => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProcessedDataCountCopyWith<_ProcessedDataCount> get copyWith =>
      throw _privateConstructorUsedError;
}
