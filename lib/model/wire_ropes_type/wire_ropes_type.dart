import 'package:freezed_annotation/freezed_annotation.dart';

part 'wire_ropes_type.freezed.dart';
part 'wire_ropes_type.g.dart';

@freezed
class WireRopesType with _$WireRopesType {
  factory WireRopesType(
      { int? id, String? core, String? construction, String? type }) = _WireRopesType;

  factory WireRopesType.fromJson(Map<String, dynamic> json) => _$WireRopesTypeFromJson(json);
}

// final int id;
// final String core;
// final String construction;
// final String type;