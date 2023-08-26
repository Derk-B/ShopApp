import 'package:shop_app/src/features/shop/data/datasources/fake_shop_items.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto_converter.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/repositories/shop_item_repository.dart';

class FakeShopItemRepository extends ShopItemRepository {
  @override
  Future<List<ShopItemEntity>> getShopItems() async {
    await Future.delayed(const Duration(seconds: 2));
    List<ShopItemDTO> dtos = FakeShopItemsDatasource().getShopItems();
    ShopItemDTOConverter converter = ShopItemDTOConverter();
    return dtos.map((e) => converter.convert(e)).toList();
  }
}
