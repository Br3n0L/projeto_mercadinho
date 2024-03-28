import 'package:flutter/material.dart';
import 'package:projeto_login_page/pages/details_page.dart';
import 'package:projeto_login_page/pages/home_page.dart';
import 'package:projeto_login_page/pages/login_page.dart';
import 'package:projeto_login_page/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
      },
    );
  }
}
