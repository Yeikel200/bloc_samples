// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedOrder _$_$FreezedOrderFromJson(Map<String, dynamic> json) {
  return _$FreezedOrder(
    id: json['id'] as int?,
    millisSinceEpoch: json['millisSinceEpoch'] as int,
    totalAmount: (json['totalAmount'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$FreezedOrderToJson(_$FreezedOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'millisSinceEpoch': instance.millisSinceEpoch,
      'totalAmount': instance.totalAmount,
    };
