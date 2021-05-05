import 'package:freezed_annotation/freezed_annotation.dart';

part 'sling.freezed.dart';
part 'sling.g.dart';

@freezed
class Sling with _$Sling {
  factory Sling({ String? core, String? coating, String? construction, String? diameter }) = _Sling;

  factory Sling.fromJson(Map<String, dynamic> json) => _$SlingFromJson(json);
}