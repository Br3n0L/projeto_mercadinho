import 'package:flutter/material.dart';
import 'package:projeto_login_page/models/product.dart';
import 'package:projeto_login_page/pages/cart.dart';

import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, '/productdetail',
              arguments: product);
        },
        child: GridTile(
          child: Image.network(product.imageUrl),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Consumer<Product>(
              builder: (context, value, _) => IconButton(
                onPressed: () {
                  product.toggleFavorite();
                },
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
            title: Text(product.title),
            trailing: IconButton(
                onPressed: () {
                  cart.addItem(product);
                },
                icon: Icon(Icons.shopping_cart)),
          ),
        ),
      ),
    );
  }
}
