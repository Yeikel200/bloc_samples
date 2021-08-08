import 'package:path/path.dart';
import 'package:shopping_cart_api/shopping_cart_api.dart';
import 'package:sqflite/sqflite.dart';

/// {@template ShoppingCartDB}
/// Helper to initialize the shopping card DataBase
/// {@endtemplate}
class ShoppingCartDB {
  /// Return [Database] for the shopping cart example
  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'shopping_cart1.db');

    return openDatabase(path, version: 1, onCreate: _createDB);
  }

  static Future<void> _createDB(Database db, int version) async {
    final createProductTable = '''
      CREATE TABLE IF NOT EXISTS ${ProductFields.tableName}
      (
      ${ProductFields.id}        INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
      ${ProductFields.name}      TEXT NOT NULL ,
      ${ProductFields.unitPrice} REAL NOT NULL ,

      UNIQUE(${ProductFields.id},${ProductFields.name})
      );
    ''';
    final createOrderTable = '''
      CREATE TABLE IF NOT EXISTS ${OrderFields.tableName}
      (
      ${OrderFields.id}        INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
      ${OrderFields.millisSinceEpoch}   INTEGER NOT NULL ,
      ${OrderFields.totalAmount} REAL NOT NULL
      );
    ''';

    final createOrderItemTable = '''
      CREATE TABLE IF NOT EXISTS ${OrderItemFields.tableName}
      (
      ${OrderItemFields.orderId}        INTEGER NOT NULL ,
      ${OrderItemFields.productId}        INTEGER NOT NULL ,
      ${OrderItemFields.unitPrice}    REAL NOT NULL ,
      ${OrderItemFields.quantity}         INTEGER NOT NULL ,
      FOREIGN KEY (${OrderItemFields.orderId})
          REFERENCES ${OrderFields.tableName} (${OrderFields.id})
            ON UPDATE NO ACTION,
      FOREIGN KEY (${OrderItemFields.productId})
          REFERENCES ${ProductFields.tableName} (${ProductFields.id})
            ON UPDATE NO ACTION
      );
    ''';

    await db.execute(createProductTable);
    await db.execute(createOrderTable);
    await db.execute(createOrderItemTable);
  }

  // Future close() async {
  //   final db = await instance.database;

  //   db.close();
  // }
}
