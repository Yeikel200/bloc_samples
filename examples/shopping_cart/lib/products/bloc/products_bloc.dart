import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    required ShoppingCartRepository shoppingCartRepo,
  })  : _shoppingCartRepo = shoppingCartRepo,
        super(const ProductsState.initial());

  final ShoppingCartRepository _shoppingCartRepo;

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is ProductsRetrieved) {
      yield* _mapProductsRetrievedToState(event);
    }
  }

  Stream<ProductsState> _mapProductsRetrievedToState(
      ProductsRetrieved event) async* {
    yield const ProductsState.loading();

    try {
      final products = await _shoppingCartRepo.getAllProducts();
      yield ProductsState.success(products: products);
    } catch (e) {
      yield const ProductsState.error();
    }
  }
}
