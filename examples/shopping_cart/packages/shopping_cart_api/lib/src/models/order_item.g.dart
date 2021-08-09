// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedOrderItem _$_$FreezedOrderItemFromJson(Map<String, dynamic> json) {
  return _$FreezedOrderItem(
    orderId: json['orderId'] as int?,
    productId: json['productId'] as int,
    unitPrice: (json['unitPrice'] as num).toDouble(),
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$_$FreezedOrderItemToJson(_$FreezedOrderItem instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productId': instance.productId,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
    };
