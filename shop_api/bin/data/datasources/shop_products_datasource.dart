import 'package:sqlite3/sqlite3.dart';

class ShopProductsDatasource {
  void init() {
    late Database db;
    try {
      db = sqlite3.open("shop.db");
    } on Exception catch (a, e) {
      print("exception:!!!!!");
      print(a);
      print(e);
    }

    db.execute(
        "CREATE TABLE products (id TEXT NOT NULL PRIMARY KEY, title TEXT, description TEXT, price REAL);");

    final stmt = db.prepare("INSERT INTO products VALUES (?, ?, ?, ?)");

    stmt
      ..execute(["1", "Chair", "A nice chair", 68.99])
      ..execute(["2", "Table", "Kids table", 45.00])
      ..execute(["3", "Chair2", "Another chair", 120.00])
      ..execute(["4", "Chair3", "A nice chair", 44.99])
      ..execute(["5", "Table2", "Kids table", 59.00])
      ..execute(["6", "Chair4", "Another chair", 24.00]);

    db.dispose();
  }

  List<Row> getProducts() {
    final db = sqlite3.open("shop.db");

    final ResultSet result = db.select("SELECT * FROM products");

    db.dispose();

    return result;
  }
}
