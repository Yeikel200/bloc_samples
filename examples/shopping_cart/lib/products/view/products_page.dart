import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/products/products.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

///ProductsPage
class ProductsPage extends StatelessWidget {
  ///ProductsPage constructor
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc(
        shoppingCartRepo: context.read<ShoppingCartRepository>(),
      )..add(const ProductsRetrieved()),
      child: const ProductsView(),
    );
  }
}

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (products) => ProductsList(products: products),
        );
      },
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = products[index];

        return Card(
          child: ListTile(
            title: Text(product.name),
            trailing: Text(product.unitPrice.toStringAsFixed(2)),
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
