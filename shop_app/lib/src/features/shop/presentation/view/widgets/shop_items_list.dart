import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';

class ShopItemsList extends StatelessWidget {
  final List<ShopItemEntity> items;
  const ShopItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(items.elementAt(index).title),
              Text(items.elementAt(index).description),
              Text(items.elementAt(index).price.toString()),
            ],
          );
        });
  }
}
