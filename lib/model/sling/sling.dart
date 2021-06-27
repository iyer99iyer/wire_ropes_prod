import 'package:freezed_annotation/freezed_annotation.dart';

part 'sling.freezed.dart';
part 'sling.g.dart';

@freezed
class Sling with _$Sling {
  factory Sling({required String core,required String coating,required String construction,required String diameter }) = _Sling;

  factory Sling.fromJson(Map<String, dynamic> json) => _$SlingFromJson(json);
}