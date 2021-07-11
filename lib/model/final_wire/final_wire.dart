import 'package:freezed_annotation/freezed_annotation.dart';

part 'final_wire.freezed.dart';
part 'final_wire.g.dart';

@freezed
class FinalWire with _$FinalWire {
  factory FinalWire(
      {
        @Default(0) int serialNo,
        required double originalPrice,
      required double discount,
      @Default("No Order ID") String orderID,
      @Default(500) int totalMeters,
        required String wireTitle,
      required String wireDetails}) = _FinalWire;

  factory FinalWire.fromJson(Map<String, dynamic> json) =>
      _$FinalWireFromJson(json);
}
