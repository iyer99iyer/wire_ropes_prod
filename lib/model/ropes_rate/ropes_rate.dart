import 'package:freezed_annotation/freezed_annotation.dart';

part 'ropes_rate.freezed.dart';
part 'ropes_rate.g.dart';

@freezed
class RopesRate with _$RopesRate {
  factory RopesRate(
      { required int ropeId ,required String diameter, required double rate,  required int selectedRopeTypeId}) = _RopesRate;

  factory RopesRate.fromJson(Map<String, dynamic> json) => _$RopesRateFromJson(json);
}