import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';

class ShopCartCard extends StatelessWidget {
  final ShopItemDTO item;
  const ShopCartCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset("lib/assets/chair.jpg")),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Container(
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),
                Text(item.price.toString()),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
