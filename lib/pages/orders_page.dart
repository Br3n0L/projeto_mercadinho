import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/app_drawer.dart';

class OrderPages extends StatelessWidget {
  const OrderPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
      ),
      drawer: const AppDrawer(),
    );
  }
}
