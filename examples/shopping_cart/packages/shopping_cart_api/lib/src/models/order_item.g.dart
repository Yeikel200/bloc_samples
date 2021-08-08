// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedOrderItem _$_$FreezedOrderItemFromJson(Map<String, dynamic> json) {
  return _$FreezedOrderItem(
    productId: json['productId'] as int?,
    orderId: json['orderId'] as int?,
    unitPrice: (json['unitPrice'] as num).toDouble(),
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$_$FreezedOrderItemToJson(_$FreezedOrderItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'orderId': instance.orderId,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
    };
