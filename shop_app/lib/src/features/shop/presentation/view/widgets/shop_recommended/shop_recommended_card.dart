import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';

class ShopRecommendedCard extends StatelessWidget {
  final ShopItemEntity item;

  const ShopRecommendedCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(
              height: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset("lib/assets/chair.jpg")),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.description,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Expanded(child: Text(item.price.toString())),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
