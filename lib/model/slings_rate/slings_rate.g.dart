// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slings_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlingsRate _$_$_SlingsRateFromJson(Map<String, dynamic> json) {
  return _$_SlingsRate(
    slingsId: json['slingsId'] as int,
    secondMeterRate: (json['secondMeterRate'] as num).toDouble(),
    doubleFerrule: (json['doubleFerrule'] as num).toDouble(),
    ropeId: json['ropeId'] as int,
  );
}

Map<String, dynamic> _$_$_SlingsRateToJson(_$_SlingsRate instance) =>
    <String, dynamic>{
      'slingsId': instance.slingsId,
      'secondMeterRate': instance.secondMeterRate,
      'doubleFerrule': instance.doubleFerrule,
      'ropeId': instance.ropeId,
    };
