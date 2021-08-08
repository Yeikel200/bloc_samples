// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return FreezedProduct.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  FreezedProduct call(
      {@JsonKey(name: ProductFields.id) int? id,
      @JsonKey(name: ProductFields.name) required String name,
      @JsonKey(name: ProductFields.unitPrice) required double unitPrice}) {
    return FreezedProduct(
      id: id,
      name: name,
      unitPrice: unitPrice,
    );
  }

  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  @JsonKey(name: ProductFields.id)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: ProductFields.name)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: ProductFields.unitPrice)
  double get unitPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: ProductFields.id) int? id,
      @JsonKey(name: ProductFields.name) String name,
      @JsonKey(name: ProductFields.unitPrice) double unitPrice});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unitPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $FreezedProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $FreezedProductCopyWith(
          FreezedProduct value, $Res Function(FreezedProduct) then) =
      _$FreezedProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: ProductFields.id) int? id,
      @JsonKey(name: ProductFields.name) String name,
      @JsonKey(name: ProductFields.unitPrice) double unitPrice});
}

/// @nodoc
class _$FreezedProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $FreezedProductCopyWith<$Res> {
  _$FreezedProductCopyWithImpl(
      FreezedProduct _value, $Res Function(FreezedProduct) _then)
      : super(_value, (v) => _then(v as FreezedProduct));

  @override
  FreezedProduct get _value => super._value as FreezedProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unitPrice = freezed,
  }) {
    return _then(FreezedProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedProduct implements FreezedProduct {
  _$FreezedProduct(
      {@JsonKey(name: ProductFields.id) this.id,
      @JsonKey(name: ProductFields.name) required this.name,
      @JsonKey(name: ProductFields.unitPrice) required this.unitPrice});

  factory _$FreezedProduct.fromJson(Map<String, dynamic> json) =>
      _$_$FreezedProductFromJson(json);

  @override
  @JsonKey(name: ProductFields.id)
  final int? id;
  @override
  @JsonKey(name: ProductFields.name)
  final String name;
  @override
  @JsonKey(name: ProductFields.unitPrice)
  final double unitPrice;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FreezedProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.unitPrice, unitPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(unitPrice);

  @JsonKey(ignore: true)
  @override
  $FreezedProductCopyWith<FreezedProduct> get copyWith =>
      _$FreezedProductCopyWithImpl<FreezedProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$FreezedProductToJson(this);
  }
}

abstract class FreezedProduct implements Product {
  factory FreezedProduct(
          {@JsonKey(name: ProductFields.id) int? id,
          @JsonKey(name: ProductFields.name) required String name,
          @JsonKey(name: ProductFields.unitPrice) required double unitPrice}) =
      _$FreezedProduct;

  factory FreezedProduct.fromJson(Map<String, dynamic> json) =
      _$FreezedProduct.fromJson;

  @override
  @JsonKey(name: ProductFields.id)
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: ProductFields.name)
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: ProductFields.unitPrice)
  double get unitPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FreezedProductCopyWith<FreezedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
