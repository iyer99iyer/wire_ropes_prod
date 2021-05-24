import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_rope_type.freezed.dart';
part 'selected_rope_type.g.dart';

@freezed
class SelectedRopeType with _$SelectedRopeType {
  factory SelectedRopeType(
      {required int selectedRopeTypeId,required String type,required String core,required String construction }) = _SelectedRopeType;

  factory SelectedRopeType.fromJson(Map<String, dynamic> json) => _$SelectedRopeTypeFromJson(json);
}