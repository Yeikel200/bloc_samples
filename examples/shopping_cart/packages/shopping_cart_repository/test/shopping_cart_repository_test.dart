// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';
import 'package:test/test.dart';
import 'package:shopping_cart_repository/shopping_cart_repository.dart';

class MockShoppingCartApi extends Mock implements ShoppingCartApi {}

void main() {
  group('ShoppingCartRepository', () {
    late ShoppingCartApi shoppingCartApi;

    setUp(() {
      shoppingCartApi = MockShoppingCartApi();
    });

    test('can be instantiated', () {
      expect(
        ShoppingCartRepository(shoppingCartApi: shoppingCartApi),
        isNotNull,
      );
    });
  });
}
