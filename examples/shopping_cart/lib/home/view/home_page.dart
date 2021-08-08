import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    return const HomeView();
  }
}

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    ProductsPage(),
    Text(
      'Index 1: Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Business',
          ),
        ],
        currentIndex: selectedIndex.value,
        selectedItemColor: Colors.amber[800],
        onTap: (i) => selectedIndex.value = i,
      ),
    );
  }
}
