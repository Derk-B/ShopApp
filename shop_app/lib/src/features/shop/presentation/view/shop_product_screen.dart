import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/domain/entities/shop_item_entity.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_product/shop_product_body.dart';
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
            ShopProductBody(product: product),
          ],
        ),
      ),
    );
  }
}
