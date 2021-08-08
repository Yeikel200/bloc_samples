// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

class ProductFields {
  static final List<String> values = [
    id,
    name,
    unitPrice,
  ];

  static const String tableName = 'Product';
  static const String id = 'productId';
  static const String name = 'name';
  static const String unitPrice = 'unitPrice';
}

@JsonSerializable()
class Product extends Equatable {
  const Product({
    required this.id,
    required this.name,
    required this.unitPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @JsonKey(name: ProductFields.id)
  final int id;

  @JsonKey(name: ProductFields.name)
  final String name;

  @JsonKey(name: ProductFields.unitPrice)
  final double unitPrice;

  @override
  List<Object?> get props => [
        id,
        name,
        unitPrice,
      ];
}
