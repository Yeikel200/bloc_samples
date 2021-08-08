// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedProduct _$_$FreezedProductFromJson(Map<String, dynamic> json) {
  return _$FreezedProduct(
    id: json['id'] as int?,
    name: json['name'] as String,
    unitPrice: (json['unitPrice'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$FreezedProductToJson(_$FreezedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unitPrice': instance.unitPrice,
    };
