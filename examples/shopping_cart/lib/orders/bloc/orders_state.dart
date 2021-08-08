part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;

  const factory OrdersState.loading() = _Loading;

  const factory OrdersState.success({
    required List<Order> orders,
  }) = _Success;

  const factory OrdersState.error() = _Error;
}
