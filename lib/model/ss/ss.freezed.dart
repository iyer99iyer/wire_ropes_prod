// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ss.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SS _$SSFromJson(Map<String, dynamic> json) {
  return _SS.fromJson(json);
}

/// @nodoc
class _$SSTearOff {
  const _$SSTearOff();

  _SS call(
      {required String grade,
      required String construction,
      required String diameter}) {
    return _SS(
      grade: grade,
      construction: construction,
      diameter: diameter,
    );
  }

  SS fromJson(Map<String, Object> json) {
    return SS.fromJson(json);
  }
}

/// @nodoc
const $SS = _$SSTearOff();

/// @nodoc
mixin _$SS {
  String get grade => throw _privateConstructorUsedError;
  String get construction => throw _privateConstructorUsedError;
  String get diameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SSCopyWith<SS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SSCopyWith<$Res> {
  factory $SSCopyWith(SS value, $Res Function(SS) then) =
      _$SSCopyWithImpl<$Res>;
  $Res call({String grade, String construction, String diameter});
}

/// @nodoc
class _$SSCopyWithImpl<$Res> implements $SSCopyWith<$Res> {
  _$SSCopyWithImpl(this._value, this._then);

  final SS _value;
  // ignore: unused_field
  final $Res Function(SS) _then;

  @override
  $Res call({
    Object? grade = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_value.copyWith(
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SSCopyWith<$Res> implements $SSCopyWith<$Res> {
  factory _$SSCopyWith(_SS value, $Res Function(_SS) then) =
      __$SSCopyWithImpl<$Res>;
  @override
  $Res call({String grade, String construction, String diameter});
}

/// @nodoc
class __$SSCopyWithImpl<$Res> extends _$SSCopyWithImpl<$Res>
    implements _$SSCopyWith<$Res> {
  __$SSCopyWithImpl(_SS _value, $Res Function(_SS) _then)
      : super(_value, (v) => _then(v as _SS));

  @override
  _SS get _value => super._value as _SS;

  @override
  $Res call({
    Object? grade = freezed,
    Object? construction = freezed,
    Object? diameter = freezed,
  }) {
    return _then(_SS(
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      construction: construction == freezed
          ? _value.construction
          : construction // ignore: cast_nullable_to_non_nullable
              as String,
      diameter: diameter == freezed
          ? _value.diameter
          : diameter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SS implements _SS {
  _$_SS(
      {required this.grade,
      required this.construction,
      required this.diameter});

  factory _$_SS.fromJson(Map<String, dynamic> json) => _$_$_SSFromJson(json);

  @override
  final String grade;
  @override
  final String construction;
  @override
  final String diameter;

  @override
  String toString() {
    return 'SS(grade: $grade, construction: $construction, diameter: $diameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SS &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
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
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(construction) ^
      const DeepCollectionEquality().hash(diameter);

  @JsonKey(ignore: true)
  @override
  _$SSCopyWith<_SS> get copyWith => __$SSCopyWithImpl<_SS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SSToJson(this);
  }
}

abstract class _SS implements SS {
  factory _SS(
      {required String grade,
      required String construction,
      required String diameter}) = _$_SS;

  factory _SS.fromJson(Map<String, dynamic> json) = _$_SS.fromJson;

  @override
  String get grade => throw _privateConstructorUsedError;
  @override
  String get construction => throw _privateConstructorUsedError;
  @override
  String get diameter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SSCopyWith<_SS> get copyWith => throw _privateConstructorUsedError;
}
