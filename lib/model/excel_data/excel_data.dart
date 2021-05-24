import 'package:freezed_annotation/freezed_annotation.dart';

part 'excel_data.freezed.dart';
part 'excel_data.g.dart';

@freezed
class ExcelData with _$ExcelData {
  factory ExcelData({
    required String type,
    required String core,
    required String construction,
    required String diameter,
    required double rate,
    required double secondMeterRate,
    required double doubleFerrule,
  }) = _ExcelData;

  factory ExcelData.fromJson(Map<String, dynamic> json) =>
      _$ExcelDataFromJson(json);
}
