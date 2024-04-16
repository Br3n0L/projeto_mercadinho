import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/cart_item_widget.dart';
import 'package:projeto_login_page/models/order_list.dart';
import 'package:projeto_login_page/pages/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Cart cart = Provider.of(context);
    final items = cart.items.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(25),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                    label: Text(
                      'R\$${cart.totalAmount}',
                      style: const TextStyle(),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Provider.of<OrderList>(context, listen: false)
                            .addOrder(cart);
                        cart.clear();
                      },
                      child: const Text('COMPRAR'))
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (ctx, i) => CartItemWidget(
                        cartItem: items[i],
                      )))
        ],
      ),
    );
  }
}
