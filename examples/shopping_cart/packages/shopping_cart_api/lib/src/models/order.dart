// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order.g.dart';

class OrderFields {
  static final List<String> values = [
    id,
    date,
    totalAmount,
  ];

  static const String tableName = 'Order';
  static const String id = 'orderId';
  static const String date = 'date';
  static const String totalAmount = 'totalAmount';
}

@JsonSerializable()
class Order extends Equatable {
  const Order({
    required this.id,
    required this.date,
    required this.totalAmount,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @JsonKey(name: OrderFields.id)
  final int id;

  @JsonKey(name: OrderFields.date)
  final DateTime date;

  @JsonKey(name: OrderFields.totalAmount)
  final double totalAmount;

  @override
  List<Object?> get props => [
        id,
        date,
        totalAmount,
      ];
}
