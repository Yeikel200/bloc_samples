// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['orderId'] as int,
    date: DateTime.parse(json['date'] as String),
    totalAmount: (json['totalAmount'] as num).toDouble(),
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'orderId': instance.id,
      'date': instance.date.toIso8601String(),
      'totalAmount': instance.totalAmount,
    };
