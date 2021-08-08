import 'package:path/path.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';
import 'package:sqflite/sqflite.dart';

/// {@template ShoppingCartDB}
/// Helper to initialize the shopping card DataBase
/// {@endtemplate}
class ShoppingCartDB {
  /// Return [Database] for the shopping cart example
  static Future<Database> initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return openDatabase(path, version: 1, onCreate: _createDB);
  }

  static Future<void> _createDB(Database db, int version) async {
    await db.execute('''
  CREATE TABLE `${ProductFields.tableName}`
  (
  `${ProductFields.id}`        int NOT NULL AUTO_INCREMENT ,
  `${ProductFields.name}`      varchar(50) NOT NULL ,
  `${ProductFields.unitPrice}` decimal(12,2) NOT NULL ,

  PRIMARY KEY (`${ProductFields.id}`),
  UNIQUE KEY `AK1_Product_SupplierId_ProductName` (`${ProductFields.name}`)
  ) AUTO_INCREMENT=1 COMMENT='Basic information 
  about Product';



  CREATE TABLE `${OrderFields.tableName}`
  (
  `${OrderFields.id}`          int NOT NULL AUTO_INCREMENT ,
  `${OrderFields.date}`        datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `${OrderFields.totalAmount}` decimal(12,2) NOT NULL ,

  PRIMARY KEY (`${OrderFields.id}`)
  ) AUTO_INCREMENT=1 COMMENT='Order information
  like Date, Amount';



  CREATE TABLE `${OrderItemFields.tableName}`
  (
  `${OrderItemFields.productId}` int NOT NULL ,
  `${OrderItemFields.orderId}`   int NOT NULL ,
  `${OrderItemFields.unitPrice}` decimal(12,2) NOT NULL ,
  `${OrderItemFields.quantity}`  int NOT NULL ,

  PRIMARY KEY (`${OrderItemFields.productId}`, `${OrderItemFields.orderId}`),
  KEY `FK_OrderItem_OrderId_Order` (`orderId`),
  CONSTRAINT `FK_OrderItem_OrderId_Order` FOREIGN KEY `FK_OrderItem_OrderId_Order` (`orderId`) REFERENCES `Order` (`orderId`),
  KEY `FK_OrderItem_ProductId_Product` (`productId`),
  CONSTRAINT `FK_OrderItem_ProductId_Product` FOREIGN KEY `FK_OrderItem_ProductId_Product` (`productId`) REFERENCES `Product` (`productId`)
  ) COMMENT='Information about
  like Price, Quantity';
''');
  }

  // Future close() async {
  //   final db = await instance.database;

  //   db.close();
  // }
}
