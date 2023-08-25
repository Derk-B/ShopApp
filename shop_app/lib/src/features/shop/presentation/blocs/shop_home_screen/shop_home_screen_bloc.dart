import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/domain/usecases/get_shop_items.dart';
part 'shop_home_screen_event.dart';
part 'shop_home_screen_state.dart';

class ShopHomeScreenBloc
    extends Bloc<ShopHomeScreenEvent, ShopHomeScreenState> {
  ShopHomeScreenBloc() : super(ShopHomeScreenLoading()) {
    on<LoadShopHomeScreen>((event, emit) async {
      List<ShopItemEntity> items = await GetShopItems().call();
      emit(ShopHomeScreenLoaded(shopItems: items));
    });
  }
}
