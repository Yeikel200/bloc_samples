part of 'orders_bloc.dart';

abstract class OrdersEvent extends Equatable {
  const OrdersEvent();
}

class OrdersRetrieved extends OrdersEvent {
  const OrdersRetrieved();
  @override
  List<Object?> get props => [];
}
