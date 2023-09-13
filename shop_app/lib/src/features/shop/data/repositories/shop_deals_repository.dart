import 'package:shop_app/src/features/shop/data/datasources/shop_deals_source.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto_converter.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/repositories/shop_item_repository.dart';

class ShopDealsRepository extends ShopItemRepository {
  @override
  Future<List<ShopItemEntity>> getShopItems() async {
    List<ShopItemDTO> dtos = await ShopDealsDatasource().getShopItems();
    ShopItemDTOConverter converter = ShopItemDTOConverter();
    return dtos.map((e) => converter.convert(e)).toList();
  }
}
