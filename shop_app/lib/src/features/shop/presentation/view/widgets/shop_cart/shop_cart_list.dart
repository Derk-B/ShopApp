import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_cart/shop_cart_card.dart';

class ShopCartList extends StatelessWidget {
  final List<ShopItemDTO> items;
  const ShopCartList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ShopCartCard(items[index]),
    );
  }
}
