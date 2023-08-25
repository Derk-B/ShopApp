import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';

class FakeShopItemsDatasource {
  List<ShopItemDTO> getShopItems() {
    return List.of([
      const ShopItemDTO(
          id: "1",
          title: "Item name",
          description: "A description of this item",
          price: 24.99),
      const ShopItemDTO(
          id: "2",
          title: "Item name",
          description: "A description of this item",
          price: 14.99),
      const ShopItemDTO(
          id: "3",
          title: "Item name",
          description:
              "A description of this itemA description of this itemA description of this itemA description of this item",
          price: 19.99),
    ]);
  }
}
