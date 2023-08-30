import 'package:portal/core/portal.dart';

import 'Routers/contact_api.dart';

void main() {
  Portal portal = Portal();

  portal.use("/contact", ContactApi());

  portal.listen("localhost", 8081);
}
