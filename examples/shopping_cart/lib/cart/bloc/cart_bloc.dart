import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState());

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    if (event is CartProductAdded) {
      yield _mapCartProductAddedToState(event);
    } else if (event is CartProductRemoved) {
      yield _mapCartProductRemovedToState(event);
    }
  }

  CartState _mapCartProductAddedToState(CartProductAdded event) {
    final isNotInList = state.orderItems
        .where(
          (e) => e.productId == event.product.id,
        )
        .toList()
        .isEmpty;

    return state.copyWith(
      orderItems: isNotInList
          ? [
              ...state.orderItems,
              OrderItem(
                productId: event.product.id!,
                unitPrice: event.product.unitPrice,
                quantity: 1,
              ),
            ]
          : [
              for (final item in state.orderItems)
                if (item.productId != event.product.id) item
            ],
    );
  }

  CartState _mapCartProductRemovedToState(CartProductRemoved event) {
    return state.copyWith(
      orderItems: [
        for (final item in state.orderItems)
          if (item.productId != event.productId) item
      ],
    );
  }
}
