import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/app_drawer.dart';
import 'package:projeto_login_page/components/badgeer.dart';
import 'package:projeto_login_page/components/product_grid.dart';
import 'package:projeto_login_page/pages/cart.dart';

import 'package:projeto_login_page/widgets/drawer_widgets.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorite, All }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-Vindo'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Somente favoritos'),
                value: FilterOptions.Favorite,
              ),
              const PopupMenuItem(
                child: Text('Todos'),
                value: FilterOptions.All,
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
          ),
          Consumer<Cart>(
            builder: (ctx, cart, child) => Badgeer(
                value: cart.itemsCount.toString(),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cartpage');
                    },
                    icon: const Icon(Icons.shopping_cart))),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ProductGrid(_showFavoriteOnly),
      ),
    );
  }
}
