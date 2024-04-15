import 'package:flutter/material.dart';
import 'package:projeto_login_page/pages/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CarItem cartItem;
  const CartItemWidget({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double quantity = cartItem.quantity.toDouble();

    return Dismissible(
      key: ValueKey(cartItem.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Theme.of(context).colorScheme.error,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
      ),
      child: Card(
        child: ListTile(
          title: Text(cartItem.title),
          subtitle: Text(
              'Total: R\$ ${(cartItem.price * quantity).toStringAsFixed(2)}'),
          trailing: Text('${quantity.toStringAsFixed(2)} x'),
        ),
      ),
    );
  }
}
