import 'dart:io';

import 'package:portal/annotations/mappers.dart';

import '../Services/shop/shop_deals_service.dart';
import '../Services/shop/shop_recommended_service.dart';

class ShopApi {
  @GetMapping("/deals")
  void getDeals(HttpRequest request) {
    ShopDealsService service = ShopDealsService();

    String response = service.getDealResponse();
    request.response
      ..write(response)
      ..close();
  }

  @GetMapping("/recommended")
  void getRecommended(HttpRequest request) {
    ShopRecommendedService service = ShopRecommendedService();

    String response = service.getRecommendedResponse();
    request.response
      ..write(response)
      ..close();
  }
}
