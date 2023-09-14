import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import "dart:convert";

import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';

class ShopDealsDatasource {
  Future<List<ShopItemDTO>> getShopItems() async {
    Response data = await http
        .get(Uri.parse("http://localhost:8081/shop/deals"), headers: {
      'Content-Type': "application/json; charset=UTF-8"
    }).onError((error, stackTrace) {
      return Response("", HttpStatus.connectionClosedWithoutResponse);
    });

    if (data.body.isEmpty) {
      return List.empty();
    }

    Iterable jsonList = json.decode(data.body);
    return List<ShopItemDTO>.from(jsonList.map((e) => ShopItemDTO.fromJson(e)));
  }
}
