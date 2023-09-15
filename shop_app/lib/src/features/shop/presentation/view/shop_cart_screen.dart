import 'package:flutter/material.dart';
import 'package:shop_app/src/features/shop/data/models/shop_item_dto.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_cart/shop_cart_list.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';

class ShopCartcreen extends StatefulWidget {
  const ShopCartcreen({super.key});

  @override
  State<ShopCartcreen> createState() => _ShopProductScreenState();
}

class _ShopProductScreenState extends State<ShopCartcreen> {
  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const ShopCartList([
              ShopItemDTO(
                id: "id1",
                title: "iets1",
                description: "desc",
                price: 123,
              ),
              ShopItemDTO(
                id: "id2",
                title: "iets2",
                description: "desc",
                price: 123,
              ),
              ShopItemDTO(
                id: "id3",
                title: "iets3",
                description: "desc",
                price: 123,
              ),
            ]),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle().copyWith(backgroundColor: const MaterialStatePropertyAll(Colors.black)),
              child: const Text("Afrekenen", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
