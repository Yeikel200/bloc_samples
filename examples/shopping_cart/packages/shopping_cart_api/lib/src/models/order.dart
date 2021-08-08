// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'order.freezed.dart';
part 'order.g.dart';

class OrderFields {
  static final List<String> values = [
    id,
    millisSinceEpoch,
    totalAmount,
  ];

  static const String tableName = 'Orders';
  static const String id = 'id';
  static const String millisSinceEpoch = 'millisSinceEpoch';
  static const String totalAmount = 'totalAmount';
}

@freezed
class Order with _$Order {
  factory Order({
    @JsonKey(name: OrderFields.id) int? id,
    @JsonKey(name: OrderFields.millisSinceEpoch) required int millisSinceEpoch,
    @JsonKey(name: OrderFields.totalAmount) required double totalAmount,
  }) = FreezedOrder;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
