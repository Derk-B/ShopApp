part of 'shop_home_screen_bloc.dart';

abstract class ShopHomeScreenState extends Equatable {
  const ShopHomeScreenState();

  @override
  List<Object> get props => [];
}

final class ShopHomeScreenLoading extends ShopHomeScreenState {}

final class ShopHomeScreenLoaded extends ShopHomeScreenState {
  final List<ShopItemEntity> shopItems;

  const ShopHomeScreenLoaded({required this.shopItems});

  @override
  List<Object> get props => [shopItems];
}

final class ShopHomeScreenError extends ShopHomeScreenState {}
