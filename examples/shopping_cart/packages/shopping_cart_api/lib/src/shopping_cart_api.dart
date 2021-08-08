import 'package:shopping_cart_api/shopping_cart_api.dart';

abstract class ShoppingCartApi {
  Future<Product> createProduct(Product product);

  Future<Order> createOrder(Order order);

  Future<OrderItem> createOrderItem(OrderItem orderItem);

  Future<List<Product>> getAllProducts();

  Future<List<Order>> getAllOrders();

  Future<List<OrderItem>> getAllOrderItems();

  Future<List<OrderItem>> getOrderItemsOfOrder(Order order);
}
