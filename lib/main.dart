import 'package:flutter/material.dart';
import 'package:projeto_login_page/models/order_list.dart';
import 'package:projeto_login_page/models/product_list.dart';
import 'package:projeto_login_page/pages/cart.dart';
import 'package:projeto_login_page/pages/cart_page.dart';
import 'package:projeto_login_page/pages/orders_page.dart';
import 'package:provider/provider.dart';
import 'package:projeto_login_page/pages/home_page.dart';
import 'package:projeto_login_page/pages/login_page.dart';
import 'package:projeto_login_page/pages/product_detail_page.dart';
import 'package:projeto_login_page/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: "/splash",
        routes: {
          '/splash': (_) => const SplashPage(),
          '/login': (_) => const LoginPage(),
          '/home': (_) => const HomePage(),
          '/productdetail': (_) => const ProductDetailPage(),
          '/cartpage': (_) => const CartPage(),
          '/orders': (_) => const OrderPages(),
        },
      ),
    );
  }
}
