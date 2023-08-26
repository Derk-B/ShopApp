import 'package:flutter/material.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
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
      drawer: NavigationDrawer(
        children: [
          Image.asset("lib/assets/chair.jpg"),
          const SizedBox(height: 4.0),
          Text(
            "ShopApp by Derk Blom",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Divider(),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const ShopHomeScreen();
                }));
              },
              child: Text(AppLocalizations.of(context)!.navigation_link_shop)),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const ContactScreen();
                }));
              },
              child:
                  Text(AppLocalizations.of(context)!.navigation_link_contact)),
        ],
      ),
      body: body,
    );
  }
}
