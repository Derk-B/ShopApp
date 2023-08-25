import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';

class ShopItemDTOConverter {
  ShopItemEntity convert(ShopItemDTO dto) {
    return ShopItemEntity(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      price: dto.price,
    );
  }
}
