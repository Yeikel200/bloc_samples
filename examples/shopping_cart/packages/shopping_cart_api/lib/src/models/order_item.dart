// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order_item.freezed.dart';
part 'order_item.g.dart';

class OrderItemFields {
  static final List<String> values = [
    productId,
    unitPrice,
    quantity,
  ];

  static const String tableName = 'OrderItem';
  static const String productId = 'productId';
  static const String orderId = 'orderId';
  static const String unitPrice = 'unitPrice';
  static const String quantity = 'quantity';
}

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    @JsonKey(name: OrderItemFields.productId) required int? productId,
    @JsonKey(name: OrderItemFields.orderId) required int? orderId,
    @JsonKey(name: OrderItemFields.unitPrice) required double unitPrice,
    @JsonKey(name: OrderItemFields.quantity) required int quantity,
  }) = FreezedOrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
