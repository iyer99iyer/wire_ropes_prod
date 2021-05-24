// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExcelData _$_$_ExcelDataFromJson(Map<String, dynamic> json) {
  return _$_ExcelData(
    type: json['type'] as String,
    core: json['core'] as String,
    construction: json['construction'] as String,
    diameter: json['diameter'] as String,
    rate: (json['rate'] as num).toDouble(),
    secondMeterRate: (json['secondMeterRate'] as num).toDouble(),
    doubleFerrule: (json['doubleFerrule'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ExcelDataToJson(_$_ExcelData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'core': instance.core,
      'construction': instance.construction,
      'diameter': instance.diameter,
      'rate': instance.rate,
      'secondMeterRate': instance.secondMeterRate,
      'doubleFerrule': instance.doubleFerrule,
    };
