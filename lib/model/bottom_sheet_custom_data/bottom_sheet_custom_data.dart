import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_custom_data.freezed.dart';
part 'bottom_sheet_custom_data.g.dart';

@freezed
class BottomSheetCustomData with _$BottomSheetCustomData {
  factory BottomSheetCustomData({
    required double rate,
    required String coating,
    required int ropeId,
  }) = _BottomSheetCustomData;

  factory BottomSheetCustomData.fromJson(Map<String, dynamic> json) =>
      _$BottomSheetCustomDataFromJson(json);
}