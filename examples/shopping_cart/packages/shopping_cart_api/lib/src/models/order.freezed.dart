// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return FreezedOrder.fromJson(json);
}

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  FreezedOrder call(
      {@JsonKey(name: OrderFields.id)
          int? id,
      @JsonKey(name: OrderFields.millisSinceEpoch)
          required int millisSinceEpoch,
      @JsonKey(name: OrderFields.totalAmount)
          required double totalAmount}) {
    return FreezedOrder(
      id: id,
      millisSinceEpoch: millisSinceEpoch,
      totalAmount: totalAmount,
    );
  }

  Order fromJson(Map<String, Object> json) {
    return Order.fromJson(json);
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  @JsonKey(name: OrderFields.id)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: OrderFields.millisSinceEpoch)
  int get millisSinceEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: OrderFields.totalAmount)
  double get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: OrderFields.id) int? id,
      @JsonKey(name: OrderFields.millisSinceEpoch) int millisSinceEpoch,
      @JsonKey(name: OrderFields.totalAmount) double totalAmount});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? millisSinceEpoch = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      millisSinceEpoch: millisSinceEpoch == freezed
          ? _value.millisSinceEpoch
          : millisSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $FreezedOrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory $FreezedOrderCopyWith(
          FreezedOrder value, $Res Function(FreezedOrder) then) =
      _$FreezedOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: OrderFields.id) int? id,
      @JsonKey(name: OrderFields.millisSinceEpoch) int millisSinceEpoch,
      @JsonKey(name: OrderFields.totalAmount) double totalAmount});
}

/// @nodoc
class _$FreezedOrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements $FreezedOrderCopyWith<$Res> {
  _$FreezedOrderCopyWithImpl(
      FreezedOrder _value, $Res Function(FreezedOrder) _then)
      : super(_value, (v) => _then(v as FreezedOrder));

  @override
  FreezedOrder get _value => super._value as FreezedOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? millisSinceEpoch = freezed,
    Object? totalAmount = freezed,
  }) {
    return _then(FreezedOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      millisSinceEpoch: millisSinceEpoch == freezed
          ? _value.millisSinceEpoch
          : millisSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedOrder implements FreezedOrder {
  _$FreezedOrder(
      {@JsonKey(name: OrderFields.id)
          this.id,
      @JsonKey(name: OrderFields.millisSinceEpoch)
          required this.millisSinceEpoch,
      @JsonKey(name: OrderFields.totalAmount)
          required this.totalAmount});

  factory _$FreezedOrder.fromJson(Map<String, dynamic> json) =>
      _$_$FreezedOrderFromJson(json);

  @override
  @JsonKey(name: OrderFields.id)
  final int? id;
  @override
  @JsonKey(name: OrderFields.millisSinceEpoch)
  final int millisSinceEpoch;
  @override
  @JsonKey(name: OrderFields.totalAmount)
  final double totalAmount;

  @override
  String toString() {
    return 'Order(id: $id, millisSinceEpoch: $millisSinceEpoch, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FreezedOrder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.millisSinceEpoch, millisSinceEpoch) ||
                const DeepCollectionEquality()
                    .equals(other.millisSinceEpoch, millisSinceEpoch)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(millisSinceEpoch) ^
      const DeepCollectionEquality().hash(totalAmount);

  @JsonKey(ignore: true)
  @override
  $FreezedOrderCopyWith<FreezedOrder> get copyWith =>
      _$FreezedOrderCopyWithImpl<FreezedOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$FreezedOrderToJson(this);
  }
}

abstract class FreezedOrder implements Order {
  factory FreezedOrder(
      {@JsonKey(name: OrderFields.id)
          int? id,
      @JsonKey(name: OrderFields.millisSinceEpoch)
          required int millisSinceEpoch,
      @JsonKey(name: OrderFields.totalAmount)
          required double totalAmount}) = _$FreezedOrder;

  factory FreezedOrder.fromJson(Map<String, dynamic> json) =
      _$FreezedOrder.fromJson;

  @override
  @JsonKey(name: OrderFields.id)
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: OrderFields.millisSinceEpoch)
  int get millisSinceEpoch => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: OrderFields.totalAmount)
  double get totalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FreezedOrderCopyWith<FreezedOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
