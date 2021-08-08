part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();
}

class ProductsRetrieved extends ProductsEvent {
  const ProductsRetrieved();
  @override
  List<Object?> get props => [];
}
