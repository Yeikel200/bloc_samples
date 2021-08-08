// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

class ProductFields {
  static final List<String> values = [
    id,
    name,
    unitPrice,
  ];

  static const String tableName = 'Product';
  static const String id = 'id';
  static const String name = 'name';
  static const String unitPrice = 'unitPrice';
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: ProductFields.id) int? id,
    @JsonKey(name: ProductFields.name) required String name,
    @JsonKey(name: ProductFields.unitPrice) required double unitPrice,
  }) = FreezedProduct;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
