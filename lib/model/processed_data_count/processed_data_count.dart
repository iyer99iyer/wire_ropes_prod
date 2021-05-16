import 'package:freezed_annotation/freezed_annotation.dart';

part 'processed_data_count.freezed.dart';
part 'processed_data_count.g.dart';

@freezed
class ProcessedDataCount with _$ProcessedDataCount {
  factory ProcessedDataCount({
    required String type,
    required String core,
    required String construction,
    required int count
  }) = _ProcessedDataCount;

  factory ProcessedDataCount.fromJson(Map<String, dynamic> json) =>
      _$ProcessedDataCountFromJson(json);
}