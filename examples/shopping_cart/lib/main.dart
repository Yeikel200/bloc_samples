import 'package:flutter/material.dart';

import 'package:search_filter_repository/search_filter_repository.dart';

import 'package:shopping_cart/app/app.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const searchFilterRepository = SearchFilterRepository();
  final shoppingCartRepository = ShoppingCartRepository(
    shoppingCartApi: SqfliteShoppingCartApi(
      db: await ShoppingCartDB.initDB(),
    ),
  );

  runApp(
    App(
      searchFilterRepository: searchFilterRepository,
      shoppingCartRepository: shoppingCartRepository,
    ),
  );
}
