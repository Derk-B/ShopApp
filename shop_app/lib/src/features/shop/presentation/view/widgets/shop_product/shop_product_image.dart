import 'package:flutter/material.dart';

class ShopProductImage extends StatelessWidget {
  final String fileName;
  const ShopProductImage(this.fileName, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset("lib/assets/chair.jpg"));
  }
}
