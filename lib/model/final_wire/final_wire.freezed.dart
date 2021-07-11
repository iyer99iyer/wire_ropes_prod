// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'final_wire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinalWire _$FinalWireFromJson(Map<String, dynamic> json) {
  return _FinalWire.fromJson(json);
}

/// @nodoc
class _$FinalWireTearOff {
  const _$FinalWireTearOff();

  _FinalWire call(
      {int serialNo = 0,
      required double originalPrice,
      required double discount,
      String orderID = "No Order ID",
      int totalMeters = 500,
      required String wireTitle,
      required String wireDetails}) {
    return _FinalWire(
      serialNo: serialNo,
      originalPrice: originalPrice,
      discount: discount,
      orderID: orderID,
      totalMeters: totalMeters,
      wireTitle: wireTitle,
      wireDetails: wireDetails,
    );
  }

  FinalWire fromJson(Map<String, Object> json) {
    return FinalWire.fromJson(json);
  }
}

/// @nodoc
const $FinalWire = _$FinalWireTearOff();

/// @nodoc
mixin _$FinalWire {
  int get serialNo => throw _privateConstructorUsedError;
  double get originalPrice => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get orderID => throw _privateConstructorUsedError;
  int get totalMeters => throw _privateConstructorUsedError;
  String get wireTitle => throw _privateConstructorUsedError;
  String get wireDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinalWireCopyWith<FinalWire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalWireCopyWith<$Res> {
  factory $FinalWireCopyWith(FinalWire value, $Res Function(FinalWire) then) =
      _$FinalWireCopyWithImpl<$Res>;
  $Res call(
      {int serialNo,
      double originalPrice,
      double discount,
      String orderID,
      int totalMeters,
      String wireTitle,
      String wireDetails});
}

/// @nodoc
class _$FinalWireCopyWithImpl<$Res> implements $FinalWireCopyWith<$Res> {
  _$FinalWireCopyWithImpl(this._value, this._then);

  final FinalWire _value;
  // ignore: unused_field
  final $Res Function(FinalWire) _then;

  @override
  $Res call({
    Object? serialNo = freezed,
    Object? originalPrice = freezed,
    Object? discount = freezed,
    Object? orderID = freezed,
    Object? totalMeters = freezed,
    Object? wireTitle = freezed,
    Object? wireDetails = freezed,
  }) {
    return _then(_value.copyWith(
      serialNo: serialNo == freezed
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      orderID: orderID == freezed
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      totalMeters: totalMeters == freezed
          ? _value.totalMeters
          : totalMeters // ignore: cast_nullable_to_non_nullable
              as int,
      wireTitle: wireTitle == freezed
          ? _value.wireTitle
          : wireTitle // ignore: cast_nullable_to_non_nullable
              as String,
      wireDetails: wireDetails == freezed
          ? _value.wireDetails
          : wireDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FinalWireCopyWith<$Res> implements $FinalWireCopyWith<$Res> {
  factory _$FinalWireCopyWith(
          _FinalWire value, $Res Function(_FinalWire) then) =
      __$FinalWireCopyWithImpl<$Res>;
  @override
  $Res call(
      {int serialNo,
      double originalPrice,
      double discount,
      String orderID,
      int totalMeters,
      String wireTitle,
      String wireDetails});
}

/// @nodoc
class __$FinalWireCopyWithImpl<$Res> extends _$FinalWireCopyWithImpl<$Res>
    implements _$FinalWireCopyWith<$Res> {
  __$FinalWireCopyWithImpl(_FinalWire _value, $Res Function(_FinalWire) _then)
      : super(_value, (v) => _then(v as _FinalWire));

  @override
  _FinalWire get _value => super._value as _FinalWire;

  @override
  $Res call({
    Object? serialNo = freezed,
    Object? originalPrice = freezed,
    Object? discount = freezed,
    Object? orderID = freezed,
    Object? totalMeters = freezed,
    Object? wireTitle = freezed,
    Object? wireDetails = freezed,
  }) {
    return _then(_FinalWire(
      serialNo: serialNo == freezed
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      orderID: orderID == freezed
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      totalMeters: totalMeters == freezed
          ? _value.totalMeters
          : totalMeters // ignore: cast_nullable_to_non_nullable
              as int,
      wireTitle: wireTitle == freezed
          ? _value.wireTitle
          : wireTitle // ignore: cast_nullable_to_non_nullable
              as String,
      wireDetails: wireDetails == freezed
          ? _value.wireDetails
          : wireDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinalWire implements _FinalWire {
  _$_FinalWire(
      {this.serialNo = 0,
      required this.originalPrice,
      required this.discount,
      this.orderID = "No Order ID",
      this.totalMeters = 500,
      required this.wireTitle,
      required this.wireDetails});

  factory _$_FinalWire.fromJson(Map<String, dynamic> json) =>
      _$_$_FinalWireFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int serialNo;
  @override
  final double originalPrice;
  @override
  final double discount;
  @JsonKey(defaultValue: "No Order ID")
  @override
  final String orderID;
  @JsonKey(defaultValue: 500)
  @override
  final int totalMeters;
  @override
  final String wireTitle;
  @override
  final String wireDetails;

  @override
  String toString() {
    return 'FinalWire(serialNo: $serialNo, originalPrice: $originalPrice, discount: $discount, orderID: $orderID, totalMeters: $totalMeters, wireTitle: $wireTitle, wireDetails: $wireDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinalWire &&
            (identical(other.serialNo, serialNo) ||
                const DeepCollectionEquality()
                    .equals(other.serialNo, serialNo)) &&
            (identical(other.originalPrice, originalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.originalPrice, originalPrice)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.orderID, orderID) ||
                const DeepCollectionEquality()
                    .equals(other.orderID, orderID)) &&
            (identical(other.totalMeters, totalMeters) ||
                const DeepCollectionEquality()
                    .equals(other.totalMeters, totalMeters)) &&
            (identical(other.wireTitle, wireTitle) ||
                const DeepCollectionEquality()
                    .equals(other.wireTitle, wireTitle)) &&
            (identical(other.wireDetails, wireDetails) ||
                const DeepCollectionEquality()
                    .equals(other.wireDetails, wireDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serialNo) ^
      const DeepCollectionEquality().hash(originalPrice) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(orderID) ^
      const DeepCollectionEquality().hash(totalMeters) ^
      const DeepCollectionEquality().hash(wireTitle) ^
      const DeepCollectionEquality().hash(wireDetails);

  @JsonKey(ignore: true)
  @override
  _$FinalWireCopyWith<_FinalWire> get copyWith =>
      __$FinalWireCopyWithImpl<_FinalWire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FinalWireToJson(this);
  }
}

abstract class _FinalWire implements FinalWire {
  factory _FinalWire(
      {int serialNo,
      required double originalPrice,
      required double discount,
      String orderID,
      int totalMeters,
      required String wireTitle,
      required String wireDetails}) = _$_FinalWire;

  factory _FinalWire.fromJson(Map<String, dynamic> json) =
      _$_FinalWire.fromJson;

  @override
  int get serialNo => throw _privateConstructorUsedError;
  @override
  double get originalPrice => throw _privateConstructorUsedError;
  @override
  double get discount => throw _privateConstructorUsedError;
  @override
  String get orderID => throw _privateConstructorUsedError;
  @override
  int get totalMeters => throw _privateConstructorUsedError;
  @override
  String get wireTitle => throw _privateConstructorUsedError;
  @override
  String get wireDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FinalWireCopyWith<_FinalWire> get copyWith =>
      throw _privateConstructorUsedError;
}
