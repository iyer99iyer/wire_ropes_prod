import 'package:freezed_annotation/freezed_annotation.dart';

part 'ms.freezed.dart';
part 'ms.g.dart';

@freezed
class MS with _$MS {
  factory MS({required String core, required String coating, required String construction, required String diameter }) = _MS;

  factory MS.fromJson(Map<String, dynamic> json) => _$MSFromJson(json);
}