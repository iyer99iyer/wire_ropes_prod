import 'package:freezed_annotation/freezed_annotation.dart';

part 'slings.freezed.dart';
part 'slings.g.dart';

@freezed
class Slings with _$Slings {
  factory Slings({ int? id, String? mm, String? rate, String? mm2, String? doubleF, int? slingsId }) = _Slings;

  factory Slings.fromJson(Map<String, dynamic> json) => _$SlingsFromJson(json);
}

// final int id;
// final String mm;
// final String price;
// final String mm2;
// final String doubleF;
// final int slingsId;