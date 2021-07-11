// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_wire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinalWire _$_$_FinalWireFromJson(Map<String, dynamic> json) {
  return _$_FinalWire(
    serialNo: json['serialNo'] as int? ?? 0,
    originalPrice: (json['originalPrice'] as num).toDouble(),
    discount: (json['discount'] as num).toDouble(),
    orderID: json['orderID'] as String? ?? 'No Order ID',
    totalMeters: json['totalMeters'] as int? ?? 500,
    wireTitle: json['wireTitle'] as String,
    wireDetails: json['wireDetails'] as String,
  );
}

Map<String, dynamic> _$_$_FinalWireToJson(_$_FinalWire instance) =>
    <String, dynamic>{
      'serialNo': instance.serialNo,
      'originalPrice': instance.originalPrice,
      'discount': instance.discount,
      'orderID': instance.orderID,
      'totalMeters': instance.totalMeters,
      'wireTitle': instance.wireTitle,
      'wireDetails': instance.wireDetails,
    };
