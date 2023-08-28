import 'dart:io';
import 'dart:convert' show utf8;

import 'package:portal/annotations/mappers.dart';
import 'package:portal/core/portal.dart';

void main() {
  Portal portal = Portal();

  portal.use("/", Api());

  portal.listen("localhost", 8081);
}

class Api {
  @PostMapping("")
  sendEmail(HttpRequest request) async {
    String userName = await utf8.decodeStream(request);
    print(userName);

    request.response.headers.add("Access-Control-Allow-Origin", "*");
    request.response.headers.add("Access-Control-Allow-Methods", "GET");

    request.response
      ..statusCode = HttpStatus.ok
      ..write("Send message")
      ..close();
  }
}
