import 'package:flutter/material.dart';

import 'package:search_filter_repository/search_filter_repository.dart';

import 'package:shopping_cart/app/app.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const searchFilterRepository = SearchFilterRepository();
  final shoppingCartApi =
      SqfliteShoppingCartApi(db: await ShoppingCartDB.initDB());

  runApp(const App(searchFilterRepository: searchFilterRepository));
}
