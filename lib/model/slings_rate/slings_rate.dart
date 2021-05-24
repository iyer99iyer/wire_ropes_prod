import 'package:freezed_annotation/freezed_annotation.dart';

part 'slings_rate.freezed.dart';
part 'slings_rate.g.dart';

@freezed
class SlingsRate with _$SlingsRate {
  factory SlingsRate({  required int slingsId,required  double secondMeterRate,required  double doubleFerrule,required  int ropeId}) = _SlingsRate;

  factory SlingsRate.fromJson(Map<String, dynamic> json) => _$SlingsRateFromJson(json);
}