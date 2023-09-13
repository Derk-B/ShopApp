import 'package:shop_app/src/features/shop/data/datasources/shop_recommended_source.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto_converter.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/repositories/shop_item_repository.dart';

class ShopRecommendedRepository extends ShopItemRepository {
  @override
  Future<List<ShopItemEntity>> getShopItems() async {
    await Future.delayed(const Duration(seconds: 2));
    List<ShopItemDTO> dtos = await ShopRecommendedDatasource().getShopItems();
    ShopItemDTOConverter converter = ShopItemDTOConverter();
    return dtos.map((e) => converter.convert(e)).toList();
  }
}
