// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ropes_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RopesRate _$_$_RopesRateFromJson(Map<String, dynamic> json) {
  return _$_RopesRate(
    ropeId: json['ropeId'] as int,
    diameter: json['diameter'] as String,
    rate: (json['rate'] as num).toDouble(),
    selectedRopeTypeId: json['selectedRopeTypeId'] as int,
  );
}

Map<String, dynamic> _$_$_RopesRateToJson(_$_RopesRate instance) =>
    <String, dynamic>{
      'ropeId': instance.ropeId,
      'diameter': instance.diameter,
      'rate': instance.rate,
      'selectedRopeTypeId': instance.selectedRopeTypeId,
    };
