import 'package:freezed_annotation/freezed_annotation.dart';

part 'ss.freezed.dart';
part 'ss.g.dart';

@freezed
class SS with _$SS {
  factory SS({required String grade,required String construction,required String diameter }) = _SS;

  factory SS.fromJson(Map<String, dynamic> json) => _$SSFromJson(json);
}