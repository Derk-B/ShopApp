import 'dart:convert';

import '../../data/repositories/shop_deal_repository.dart';

class ShopRecommendedService {
  ShopDealRepository repository = ShopDealRepository();

  String getRecommendedResponse() {
    return jsonEncode(repository.getDeals());
  }
}
