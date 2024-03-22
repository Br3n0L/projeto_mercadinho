import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-Vindo'),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('Nossos Produtos'),
            Divider(),
            Text('Cereais'),
            Divider(),
            Text('Laticíneos'),
            Divider(),
            Text('Bebidas'),
            Divider(),
            Text('Massas'),
            Divider(),
            Text('Congelados'),
            Divider(),
            Text('Sorvetes'),
            Divider(),
            Text('Carnes'),
          ],
        ),
      ),
    );
  }
}
