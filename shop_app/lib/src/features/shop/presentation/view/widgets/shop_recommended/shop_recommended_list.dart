import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_recommended/shop_recommended_card.dart';

class ShopRecommendedList extends StatelessWidget {
  final List<ShopItemEntity> items;

  const ShopRecommendedList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ShopRecommendedCard(item: items.elementAt(index));
      },
    );
  }
}
