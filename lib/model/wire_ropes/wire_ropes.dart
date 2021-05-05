import 'package:freezed_annotation/freezed_annotation.dart';

part 'wire_ropes.freezed.dart';
part 'wire_ropes.g.dart';

@freezed
class WireRopes with _$WireRopes {
  factory WireRopes(
      { int? id, String? mm, String? rate, int? rateId }) = _WireRopes;

  factory WireRopes.fromJson(Map<String, dynamic> json) => _$WireRopesFromJson(json);
}

// final String mm;
// final String price;
// final int id;
// final int rateId;