import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/custom_imports/app_localizations.dart';
import 'package:shop_app/src/features/shop/presentation/blocs/shop_home_screen/shop_home_screen_bloc.dart';
import 'package:shop_app/src/features/shop/presentation/view/shop_cart_screen.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_deals/shop_deals_widget.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_recommended/shop_recommended_widget.dart';
import 'package:shop_app/src/shared/presentation/components/sa_default_scaffold.dart';
import 'package:shop_app/src/shared/presentation/pages/error_screen.dart';
import 'package:shop_app/src/shared/presentation/pages/loading_screen.dart';
import 'package:shop_app/src/shared/presentation/components/sa_searchbar.dart';

class ShopHomeScreen extends StatefulWidget {
  const ShopHomeScreen({super.key});

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SADefaultScaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                ShopHomeScreenBloc()..add(LoadShopHomeScreen()),
          ),
        ],
        child: BlocBuilder<ShopHomeScreenBloc, ShopHomeScreenState>(
          builder: (context, state) {
            if (state is ShopHomeScreenLoading) return const LoadingScreen();

            if (state is ShopHomeScreenLoaded) {
              return ShopHomeScreenWidget(state: state);
            }

            return const ErrorScreen();
          },
        ),
      ),
    );
  }
}

class ShopHomeScreenWidget extends StatelessWidget {
  final ShopHomeScreenLoaded state;
  const ShopHomeScreenWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShopCartcreen()));
                },
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
                  ShopDealsWidget(items: state.deals),
                  ShopRecommendedWidget(items: state.recommendedProducts),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
