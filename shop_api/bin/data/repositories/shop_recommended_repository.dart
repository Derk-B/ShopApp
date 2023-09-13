import '../../Models/shop_recommended_dto.dart';
import '../datasources/shop_products_datasource.dart';

class ShopRecommendedRepository {
  ShopProductsDatasource datasource = ShopProductsDatasource();

  List<ShopRecommendedDTO> getRecommended() {
    return datasource
        .getProducts()
        .map((e) => ShopRecommendedDTO.fromJson(e))
        .toList();
  }
}
