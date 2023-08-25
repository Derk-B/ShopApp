import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_deals/shop_deals_card.dart';

class ShopDealsList extends StatelessWidget {
  final List<ShopItemEntity> items;
  const ShopDealsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ShopDealsCard(item: items.elementAt(index));
        },
      ),
    );
  }
}
