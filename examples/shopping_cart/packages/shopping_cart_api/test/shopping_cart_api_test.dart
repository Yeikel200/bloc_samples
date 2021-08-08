// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:test/test.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';

class MockDataBase extends Mock implements Database {}

void main() {
  group('ShoppingCartApi', () {
    test('can be instantiated', () {
      expect(SqfliteShoppingCartApi(db: MockDataBase()), isNotNull);
    });
  });
}
