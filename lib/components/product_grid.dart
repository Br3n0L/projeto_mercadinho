import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/product_item.dart';
import 'package:projeto_login_page/models/product.dart';
import 'package:projeto_login_page/models/product_list.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  final bool showFavoriteOnly;
  const ProductGrid(
    this.showFavoriteOnly,
  );

  @override
  Widget build(BuildContext context) {
    final productList = Provider.of<ProductList>(context);
    final List<Product> loadedProducts =
        showFavoriteOnly ? productList.favoriteItems : productList.items;

    return GridView.builder(
        itemCount: loadedProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: loadedProducts[i], child: ProductItem()));
  }
}
