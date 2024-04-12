import 'package:flutter/material.dart';
import 'package:projeto_login_page/pages/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CarItem cartItem;
  const CartItemWidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cartItem.title),
        subtitle: Text('Total: R\$ ${cartItem.price * cartItem.quantity}'),
        trailing: Text('${cartItem.quantity}x'),
      ),
    );
  }
}
