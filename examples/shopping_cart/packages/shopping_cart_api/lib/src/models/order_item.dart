// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable()
class OrderItem extends Equatable {
  const OrderItem({
    required this.productId,
    required this.orderId,
    required this.unitPrice,
    required this.quantity,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  @JsonKey(name: OrderItemFields.productId)
  final int productId;

  @JsonKey(name: OrderItemFields.orderId)
  final int orderId;

  @JsonKey(name: OrderItemFields.unitPrice)
  final double unitPrice;

  @JsonKey(name: OrderItemFields.quantity)
  final int quantity;

  @override
  List<Object?> get props => [
        productId,
        orderId,
        unitPrice,
        quantity,
      ];
}
