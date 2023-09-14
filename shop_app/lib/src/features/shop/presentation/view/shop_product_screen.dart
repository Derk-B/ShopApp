import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_product/shop_product_header.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_product/shop_product_image.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';

class ShopProductScreen extends StatelessWidget {
  final ShopItemEntity product;
  const ShopProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopProductHeader(title: product.title, price: product.price),
            const ShopProductImage("/chair.jpg"),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                TextButton.icon(
                    style: const ButtonStyle().copyWith(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.all(16.0)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Kopen",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(product.description),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
