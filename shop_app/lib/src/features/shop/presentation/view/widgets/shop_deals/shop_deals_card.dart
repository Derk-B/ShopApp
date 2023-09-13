import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/shop_product_screen.dart';

class ShopDealsCard extends StatelessWidget {
  final ShopItemEntity item;

  const ShopDealsCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: SizedBox(
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset("lib/assets/chair.jpg")),
              Text(
                item.title,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Text(
                item.description,
                maxLines: 2,
                style: const TextStyle(overflow: TextOverflow.ellipsis),
              )),
              Row(
                children: [
                  Expanded(
                    child: Text(item.price.toString()),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ShopProductScreen()));
                      },
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
      ),
    );
  }
}
