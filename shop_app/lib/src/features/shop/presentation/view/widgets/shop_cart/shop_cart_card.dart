import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';

class ShopCartCard extends StatelessWidget {
  final ShopItemDTO item;
  final int amount;
  const ShopCartCard(this.item, {super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(item.price.toString()),
              Text("$amount pieces"),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
      ]),
    );
  }
}
