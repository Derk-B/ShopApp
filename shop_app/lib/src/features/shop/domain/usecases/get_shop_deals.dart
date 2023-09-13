import 'package:shop_app/src/features/shop/data/repositories/shop_deals_repository.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/repositories/shop_item_repository.dart';
import 'package:shop_app/src/shared/domain/usecases/usecase.dart';

class GetShopDeals implements UseCase<Future<List<ShopItemEntity>>> {
  final ShopItemRepository _shopItemRepository = ShopDealsRepository();

  @override
  Future<List<ShopItemEntity>> call() async {
    return await _shopItemRepository.getShopItems();
  }
}
