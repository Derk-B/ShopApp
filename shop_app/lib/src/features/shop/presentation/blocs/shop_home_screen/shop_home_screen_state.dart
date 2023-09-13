part of 'shop_home_screen_bloc.dart';

abstract class ShopHomeScreenState extends Equatable {
  const ShopHomeScreenState();

  @override
  List<Object> get props => [];
}

final class ShopHomeScreenLoading extends ShopHomeScreenState {}

final class ShopHomeScreenLoaded extends ShopHomeScreenState {
  final List<ShopItemEntity> deals;
  final List<ShopItemEntity> recommendedProducts;

  const ShopHomeScreenLoaded(
      {required this.deals, required this.recommendedProducts});

  @override
  List<Object> get props => [deals, recommendedProducts];
}

final class ShopHomeScreenError extends ShopHomeScreenState {}
