import 'package:freezed_annotation/freezed_annotation.dart';

part 'ms.freezed.dart';
part 'ms.g.dart';

@freezed
class MS with _$MS {
  factory MS({ String? core, String? coating, String? construction, String? diameter }) = _MS;

  factory MS.fromJson(Map<String, dynamic> json) => _$MSFromJson(json);
}