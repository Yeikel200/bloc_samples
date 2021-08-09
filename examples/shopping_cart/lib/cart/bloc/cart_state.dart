part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(<OrderItem>[]) List<OrderItem> orderItems,
  }) = _FreezedCartState;
}
