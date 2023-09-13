import 'dart:convert';

import '../../data/repositories/shop_deal_repository.dart';

class ShopDealsService {
  ShopDealRepository repository = ShopDealRepository();

  String getDealResponse() {
    return jsonEncode(repository.getDeals());
  }
}
