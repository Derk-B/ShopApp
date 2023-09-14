import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/usecases/get_shop_deals.dart';
import 'package:shop_app/src/features/shop/domain/usecases/get_shop_recommended.dart';
part 'shop_home_screen_event.dart';
part 'shop_home_screen_state.dart';

class ShopHomeScreenBloc
    extends Bloc<ShopHomeScreenEvent, ShopHomeScreenState> {
  ShopHomeScreenBloc() : super(ShopHomeScreenLoading()) {
    on<LoadShopHomeScreen>((event, emit) async {
      List<ShopItemEntity> deals = await GetShopDeals().call();
      List<ShopItemEntity> recommendedProducts =
          await GetShopRecommended().call();

      if (deals.isEmpty || recommendedProducts.isEmpty) {
        return emit(ShopHomeScreenError());
      }

      emit(ShopHomeScreenLoaded(
          deals: deals, recommendedProducts: recommendedProducts));
    });
  }
}
