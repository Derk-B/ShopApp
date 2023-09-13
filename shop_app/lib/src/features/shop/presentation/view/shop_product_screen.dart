import 'package:flutter/material.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';
import 'package:shop_app/src/shared/presentation/components/sa_searchbar.dart';

class ShopProductScreen extends StatefulWidget {
  const ShopProductScreen({super.key});

  @override
  State<ShopProductScreen> createState() => _ShopProductScreenState();
}

class _ShopProductScreenState extends State<ShopProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SASeachbar(
                    hint: AppLocalizations.of(context)!.shop_home_search,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
                style: const ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Colors.black),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("hallo"),
                  Text("hallo2"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
