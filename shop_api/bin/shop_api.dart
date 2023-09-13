import 'package:portal/core/portal.dart';

import 'Routers/contact_api.dart';
import 'Routers/shop_api.dart';

void main() {
  Portal portal = Portal();

  portal.use("/contact", ContactApi());
  portal.use("/shop", ShopApi());

  portal.listen("localhost", 8081);
}
