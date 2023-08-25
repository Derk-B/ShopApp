import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_recommended/shop_recommended_list.dart';

class ShopRecommendedWidget extends StatelessWidget {
  final List<ShopItemEntity> items;

  const ShopRecommendedWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aanbevolen",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16.0),
          ShopRecommendedList(items: items),
          ShopRecommendedList(items: items),
          ShopRecommendedList(items: items),
        ],
      ),
    );
  }
}
