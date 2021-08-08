import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/orders/orders.dart';
import 'package:shopping_cart/shared/shared.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

///OrdersPage
class OrdersPage extends StatelessWidget {
  ///OrdersPage constructor
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersBloc(
        shoppingCartRepo: context.read<ShoppingCartRepository>(),
      )..add(const OrdersRetrieved()),
      child: const OrdersView(),
    );
  }
}

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: () => CustomErrorWidget(
            onPressed: () {
              context.read<OrdersBloc>().add(const OrdersRetrieved());
            },
          ),
          success: (products) => OrdersList(orders: products),
        );
      },
    );
  }
}

class OrdersList extends StatelessWidget {
  const OrdersList({
    Key? key,
    required this.orders,
  }) : super(key: key);

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final order = orders[index];
        final date =
            DateTime.fromMicrosecondsSinceEpoch(order.millisSinceEpoch);
        return Card(
          child: ListTile(
            title: Text(order.id.toString()),
            trailing: Text(date.toString()),
          ),
        );
      },
      itemCount: orders.length,
    );
  }
}
