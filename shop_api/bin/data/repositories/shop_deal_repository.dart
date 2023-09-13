import '../../Models/shop_deal_dto.dart';
import '../datasources/shop_products_datasource.dart';

class ShopDealRepository {
  ShopProductsDatasource datasource = ShopProductsDatasource();

  List<ShopDealDTO> getDeals() {
    return datasource
        .getProducts()
        .map((e) => ShopDealDTO.fromJson(e))
        .toList();
  }
}
