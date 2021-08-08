// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return FreezedOrderItem.fromJson(json);
}

/// @nodoc
class _$OrderItemTearOff {
  const _$OrderItemTearOff();

  FreezedOrderItem call(
      {@JsonKey(name: OrderItemFields.productId) required int? productId,
      @JsonKey(name: OrderItemFields.orderId) required int? orderId,
      @JsonKey(name: OrderItemFields.unitPrice) required double unitPrice,
      @JsonKey(name: OrderItemFields.quantity) required int quantity}) {
    return FreezedOrderItem(
      productId: productId,
      orderId: orderId,
      unitPrice: unitPrice,
      quantity: quantity,
    );
  }

  OrderItem fromJson(Map<String, Object> json) {
    return OrderItem.fromJson(json);
  }
}

/// @nodoc
const $OrderItem = _$OrderItemTearOff();

/// @nodoc
mixin _$OrderItem {
  @JsonKey(name: OrderItemFields.productId)
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: OrderItemFields.orderId)
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: OrderItemFields.unitPrice)
  double get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: OrderItemFields.quantity)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: OrderItemFields.productId) int? productId,
      @JsonKey(name: OrderItemFields.orderId) int? orderId,
      @JsonKey(name: OrderItemFields.unitPrice) double unitPrice,
      @JsonKey(name: OrderItemFields.quantity) int quantity});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  final OrderItem _value;
  // ignore: unused_field
  final $Res Function(OrderItem) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? orderId = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $FreezedOrderItemCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory $FreezedOrderItemCopyWith(
          FreezedOrderItem value, $Res Function(FreezedOrderItem) then) =
      _$FreezedOrderItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: OrderItemFields.productId) int? productId,
      @JsonKey(name: OrderItemFields.orderId) int? orderId,
      @JsonKey(name: OrderItemFields.unitPrice) double unitPrice,
      @JsonKey(name: OrderItemFields.quantity) int quantity});
}

/// @nodoc
class _$FreezedOrderItemCopyWithImpl<$Res> extends _$OrderItemCopyWithImpl<$Res>
    implements $FreezedOrderItemCopyWith<$Res> {
  _$FreezedOrderItemCopyWithImpl(
      FreezedOrderItem _value, $Res Function(FreezedOrderItem) _then)
      : super(_value, (v) => _then(v as FreezedOrderItem));

  @override
  FreezedOrderItem get _value => super._value as FreezedOrderItem;

  @override
  $Res call({
    Object? productId = freezed,
    Object? orderId = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
  }) {
    return _then(FreezedOrderItem(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedOrderItem implements FreezedOrderItem {
  _$FreezedOrderItem(
      {@JsonKey(name: OrderItemFields.productId) required this.productId,
      @JsonKey(name: OrderItemFields.orderId) required this.orderId,
      @JsonKey(name: OrderItemFields.unitPrice) required this.unitPrice,
      @JsonKey(name: OrderItemFields.quantity) required this.quantity});

  factory _$FreezedOrderItem.fromJson(Map<String, dynamic> json) =>
      _$_$FreezedOrderItemFromJson(json);

  @override
  @JsonKey(name: OrderItemFields.productId)
  final int? productId;
  @override
  @JsonKey(name: OrderItemFields.orderId)
  final int? orderId;
  @override
  @JsonKey(name: OrderItemFields.unitPrice)
  final double unitPrice;
  @override
  @JsonKey(name: OrderItemFields.quantity)
  final int quantity;

  @override
  String toString() {
    return 'OrderItem(productId: $productId, orderId: $orderId, unitPrice: $unitPrice, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FreezedOrderItem &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.unitPrice, unitPrice)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(unitPrice) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  $FreezedOrderItemCopyWith<FreezedOrderItem> get copyWith =>
      _$FreezedOrderItemCopyWithImpl<FreezedOrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$FreezedOrderItemToJson(this);
  }
}

abstract class FreezedOrderItem implements OrderItem {
  factory FreezedOrderItem(
          {@JsonKey(name: OrderItemFields.productId) required int? productId,
          @JsonKey(name: OrderItemFields.orderId) required int? orderId,
          @JsonKey(name: OrderItemFields.unitPrice) required double unitPrice,
          @JsonKey(name: OrderItemFields.quantity) required int quantity}) =
      _$FreezedOrderItem;

  factory FreezedOrderItem.fromJson(Map<String, dynamic> json) =
      _$FreezedOrderItem.fromJson;

  @override
  @JsonKey(name: OrderItemFields.productId)
  int? get productId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: OrderItemFields.orderId)
  int? get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: OrderItemFields.unitPrice)
  double get unitPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: OrderItemFields.quantity)
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FreezedOrderItemCopyWith<FreezedOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
