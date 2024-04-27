import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/app_drawer.dart';
import 'package:projeto_login_page/components/order_widget.dart';
import 'package:projeto_login_page/models/order_list.dart';
import 'package:provider/provider.dart';

class OrderPages extends StatelessWidget {
  const OrderPages({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
          itemCount: orders.itemsCount,
          itemBuilder: (ctx, i) => OrderWidget(order: orders.items[i])),
    );
  }
}
