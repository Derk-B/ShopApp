import 'package:sqlite3/sqlite3.dart';

class ShopProductsDatasource {
  List<Row> getProducts() {
    final db = sqlite3.open("shop.db");

    final ResultSet result = db.select("SELECT * FROM products");

    db.dispose();

    print(result.rows.length);

    return result;
  }
}
