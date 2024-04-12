import 'package:flutter/material.dart';
import 'package:projeto_login_page/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
