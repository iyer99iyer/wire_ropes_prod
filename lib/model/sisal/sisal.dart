import 'package:freezed_annotation/freezed_annotation.dart';

part 'sisal.freezed.dart';
part 'sisal.g.dart';

@freezed
class Sisal with _$Sisal {
  factory Sisal({ String? coreConstruction, String? diameter }) = _Sisal;

  factory Sisal.fromJson(Map<String, dynamic> json) => _$SisalFromJson(json);
}