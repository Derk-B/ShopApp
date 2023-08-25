import 'package:flutter/material.dart';
import 'package:shop_app/src/features/contact/domain/presentation/views/contact_screen.dart';
import 'package:shop_app/src/features/shop/presentation/view/shop_home_screen.dart';

class SADefaultScaffold extends StatelessWidget {
  final Widget body;
  const SADefaultScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.black87,
              ),
              style: IconButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: NavigationDrawer(children: [
        TextButton(
            onPressed: () {
              while (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ShopHomeScreen();
              }));
            },
            child: const Text("Home")),
        TextButton(
            onPressed: () {
              while (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ContactScreen();
              }));
            },
            child: const Text("Contact")),
      ]),
      body: body,
    );
  }
}
