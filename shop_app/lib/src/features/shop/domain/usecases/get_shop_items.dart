import 'package:shop_app/src/features/shop/data/repositories/fake_shop_item_repository.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/repositories/shop_item_repository.dart';
import 'package:shop_app/src/shared/domain/usecases/usecase.dart';

class GetShopItems implements UseCase<Future<List<ShopItemEntity>>> {
  final ShopItemRepository _shopItemRepository = FakeShopItemRepository();

  @override
  Future<List<ShopItemEntity>> call() async {
    return await _shopItemRepository.getShopItems();
  }
}
