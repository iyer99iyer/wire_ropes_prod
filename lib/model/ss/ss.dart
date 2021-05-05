import 'package:freezed_annotation/freezed_annotation.dart';

part 'ss.freezed.dart';
part 'ss.g.dart';

@freezed
class SS with _$SS {
  factory SS({ String? grade, String? construction, String? diameter }) = _SS;

  factory SS.fromJson(Map<String, dynamic> json) => _$SSFromJson(json);
}