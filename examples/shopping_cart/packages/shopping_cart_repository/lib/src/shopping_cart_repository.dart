import 'package:shopping_cart_api/shopping_cart_api.dart';

/// {@template ShoppingCartRepository}
/// ShoppingCartRepository
/// {@endtemplate}
class ShoppingCartRepository {
  /// {@macro shopping_cart_repository}
  const ShoppingCartRepository({
    required this.shoppingCartApi,
  });

  final ShoppingCartApi shoppingCartApi;

  Future<Product> createProduct(Product product) async {
    return shoppingCartApi.createProduct(product);
  }

  Future<Order> createOrder(Order order) async {
    return shoppingCartApi.createOrder(order);
  }

  Future<OrderItem> createOrderItem(OrderItem orderItem) async {
    return shoppingCartApi.createOrderItem(orderItem);
  }

  Future<List<Product>> getAllProducts() async {
    return shoppingCartApi.getAllProducts();
  }

  Future<List<Order>> getAllOrders() async {
    return shoppingCartApi.getAllOrders();
  }

  Future<List<OrderItem>> getAllOrderItems() async {
    return shoppingCartApi.getAllOrderItems();
  }

  Future<List<OrderItem>> getOrderItemsOfOrder(Order order) async {
    return shoppingCartApi.getOrderItemsOfOrder(order);
  }
}
