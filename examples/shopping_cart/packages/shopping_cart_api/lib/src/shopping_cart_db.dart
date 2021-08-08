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
    final path = join(dbPath, 'shopping_cart4.db');

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

    final insertProducts = '''
      INSERT INTO ${ProductFields.tableName} (${ProductFields.name}, ${ProductFields.unitPrice}) VALUES 
      ('Cheese - Brie, Cups 125g', 63.76),
      ('Aspic - Light', 77.27),
      ('Wine - Valpolicella Masi', 20.64),
      ('Sproutsmustard Cress', 7.21),
      ('Silicone Paper 16.5x24', 92.18),
      ('Cheese - Shred Cheddar / Mozza', 41.52),
      ('Onions Granulated', 51.87),
      ('Sobe - Green Tea', 30.27),
      ('Trout - Hot Smkd, Dbl Fillet', 27.75),
      ('Wine - Ruffino Chianti', 9.84),
      ('The Pop Shoppe - Lime Rickey', 47.5),
      ('Pork - Kidney', 22.23),
      ('Anchovy In Oil', 73.37),
      ('Grand Marnier', 52.53),
      ('Tia Maria', 70.69),
      ('Basil - Primerba, Paste', 77.89),
      ('Wine - Chenin Blanc K.w.v.', 11.53),
      ('Dried Apple', 21.7),
      ('Wine - Pinot Noir Mondavi Coastal', 65.44),
      ('Flour - Semolina', 2.53);
    ''';

    await db.execute(createProductTable);
    await db.execute(insertProducts);
    await db.execute(createOrderTable);
    await db.execute(createOrderItemTable);
  }

  // Future close() async {
  //   final db = await instance.database;

  //   db.close();
  // }
}
