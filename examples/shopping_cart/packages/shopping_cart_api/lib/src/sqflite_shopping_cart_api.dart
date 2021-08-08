import 'package:sqflite/sqflite.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';

class SqfliteShoppingCartApi implements ShoppingCartApi {
  const SqfliteShoppingCartApi({
    required this.db,
  });

  final Database db;

  @override
  Future<Product> createProduct(Product product) async {
    final id = await db.insert(ProductFields.tableName, product.toJson());

    return product.copyWith(id: id);
  }

  @override
  Future<Order> createOrder(Order order) async {
    final id = await db.insert(OrderFields.tableName, order.toJson());

    return order.copyWith(id: id);
  }

  @override
  Future<OrderItem> createOrderItem(OrderItem orderItem) async {
    await db.insert(OrderItemFields.tableName, orderItem.toJson());
    return orderItem;
  }

  @override
  Future<List<Product>> getAllProducts() async {
    final orderBy = '${ProductFields.name} ASC';

    final result = await db.query(ProductFields.tableName, orderBy: orderBy);

    return result.map((json) => Product.fromJson(json)).toList();
  }

  @override
  Future<List<Order>> getAllOrders() async {
    final orderBy = '${OrderFields.millisSinceEpoch} ASC';

    final result = await db.query(OrderFields.tableName, orderBy: orderBy);

    return result.map((json) => Order.fromJson(json)).toList();
  }

  @override
  Future<List<OrderItem>> getAllOrderItems() async {
    final result = await db.query(OrderItemFields.tableName);

    return result.map((json) => OrderItem.fromJson(json)).toList();
  }

  @override
  Future<List<OrderItem>> getOrderItemsOfOrder(Order order) async {
    final where = '${OrderItemFields.orderId} = ${order.id}';
    final result = await db.query(OrderItemFields.tableName, where: where);

    return result.map((json) => OrderItem.fromJson(json)).toList();
  }
}
