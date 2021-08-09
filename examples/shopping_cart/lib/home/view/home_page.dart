import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shopping_cart/cart/cart.dart';
import 'package:shopping_cart/orders/orders.dart';
import 'package:shopping_cart/products/view/products_page.dart';

///HomePage
class HomePage extends StatelessWidget {
  ///HomePage constructor
  const HomePage({Key? key}) : super(key: key);

  ///HomePage [routeName]
  static const routeName = 'HomePage';

  ///Router for HomePage
  static Route go() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartBloc(),
      child: const HomeView(),
    );
  }
}

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    ProductsPage(),
    OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('NoScopeDevs Shop'),
        actions: const [CartButton()],
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Orders',
          ),
        ],
        currentIndex: selectedIndex.value,
        selectedItemColor: Colors.amber[800],
        onTap: (i) => selectedIndex.value = i,
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_sharp),
        ),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) => CircleAvatar(
            radius: 10,
            child: Text(
              '${state.orderItems.length}',
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
