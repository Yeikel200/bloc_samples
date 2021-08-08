import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc({
    required ShoppingCartRepository shoppingCartRepo,
  })  : _shoppingCartRepo = shoppingCartRepo,
        super(const OrdersState.initial());

  final ShoppingCartRepository _shoppingCartRepo;

  @override
  Stream<OrdersState> mapEventToState(
    OrdersEvent event,
  ) async* {
    if (event is OrdersRetrieved) {
      yield* _mapOrdersRetrievedToState(event);
    }
  }

  Stream<OrdersState> _mapOrdersRetrievedToState(OrdersRetrieved event) async* {
    yield const OrdersState.loading();

    try {
      final orders = await _shoppingCartRepo.getAllOrders();
      yield OrdersState.success(orders: orders);
    } catch (e) {
      yield const OrdersState.error();
    }
  }
}
