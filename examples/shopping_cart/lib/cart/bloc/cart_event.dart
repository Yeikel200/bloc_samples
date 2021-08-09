part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class CartProductAdded extends CartEvent {
  const CartProductAdded(this.product);

  final Product product;
  @override
  List<Object?> get props => [product];
}

class CartProductRemoved extends CartEvent {
  const CartProductRemoved(this.productId);

  final int productId;
  @override
  List<Object?> get props => [productId];
}
