import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/home/home.dart';
import 'package:search_filter_repository/search_filter_repository.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';
export 'app_bloc_observer.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required SearchFilterRepository searchFilterRepository,
    required ShoppingCartRepository shoppingCartRepository,
  })  : _searchFilterRepository = searchFilterRepository,
        _shoppingCartRepository = shoppingCartRepository,
        super(key: key);

  final SearchFilterRepository _searchFilterRepository;
  final ShoppingCartRepository _shoppingCartRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _searchFilterRepository),
        RepositoryProvider.value(value: _shoppingCartRepository),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
