// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _FreezedCartState call({List<OrderItem> orderItems = const <OrderItem>[]}) {
    return _FreezedCartState(
      orderItems: orderItems,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<OrderItem> orderItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? orderItems = freezed,
  }) {
    return _then(_value.copyWith(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
abstract class _$FreezedCartStateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$FreezedCartStateCopyWith(
          _FreezedCartState value, $Res Function(_FreezedCartState) then) =
      __$FreezedCartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderItem> orderItems});
}

/// @nodoc
class __$FreezedCartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$FreezedCartStateCopyWith<$Res> {
  __$FreezedCartStateCopyWithImpl(
      _FreezedCartState _value, $Res Function(_FreezedCartState) _then)
      : super(_value, (v) => _then(v as _FreezedCartState));

  @override
  _FreezedCartState get _value => super._value as _FreezedCartState;

  @override
  $Res call({
    Object? orderItems = freezed,
  }) {
    return _then(_FreezedCartState(
      orderItems: orderItems == freezed
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$_FreezedCartState implements _FreezedCartState {
  const _$_FreezedCartState({this.orderItems = const <OrderItem>[]});

  @JsonKey(defaultValue: const <OrderItem>[])
  @override
  final List<OrderItem> orderItems;

  @override
  String toString() {
    return 'CartState(orderItems: $orderItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedCartState &&
            (identical(other.orderItems, orderItems) ||
                const DeepCollectionEquality()
                    .equals(other.orderItems, orderItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderItems);

  @JsonKey(ignore: true)
  @override
  _$FreezedCartStateCopyWith<_FreezedCartState> get copyWith =>
      __$FreezedCartStateCopyWithImpl<_FreezedCartState>(this, _$identity);
}

abstract class _FreezedCartState implements CartState {
  const factory _FreezedCartState({List<OrderItem> orderItems}) =
      _$_FreezedCartState;

  @override
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FreezedCartStateCopyWith<_FreezedCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
