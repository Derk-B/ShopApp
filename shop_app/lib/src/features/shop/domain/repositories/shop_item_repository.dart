import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';

abstract class ShopItemRepository {
  Future<List<ShopItemEntity>> getShopItems();
}
