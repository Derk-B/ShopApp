import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/src/features/shop/presentation/blocs/shop_home_screen/shop_home_screen_bloc.dart';
import 'package:shop_app/src/features/shop/presentation/view/widgets/shop_items_list.dart';
import 'package:shop_app/src/shared/domain/pages/error_screen.dart';

class ShopHomeScreen extends StatefulWidget {
  const ShopHomeScreen({super.key});

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                ShopHomeScreenBloc()..add(LoadShopHomeScreen()),
          ),
        ],
        child: BlocBuilder<ShopHomeScreenBloc, ShopHomeScreenState>(
          builder: (context, state) {
            if (state is ShopHomeScreenLoading) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.grey));
            }

            if (state is ShopHomeScreenLoaded) {
              return ShopItemsList(items: state.shopItems);
            } else {
              return const ErrorScreen();
            }
          },
        ),
      ),
    );
  }
}
