import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_count_excel_data.freezed.dart';
part 'view_count_excel_data.g.dart';

@freezed
class ViewCountExcelData with _$ViewCountExcelData {
  factory ViewCountExcelData(
      {required int count,required String type,required String core,required String construction }) = _ViewCountExcelData;

  factory ViewCountExcelData.fromJson(Map<String, dynamic> json) => _$ViewCountExcelDataFromJson(json);
}