import 'package:flutter/material.dart';
import 'views/login_view.dart';
import 'views/menu_view.dart';
import 'views/home_view.dart';
import 'views/register_product_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/menu': (context) => MenuView(),
        '/home': (context) => HomeView(),
        '/register': (context) => RegisterProductView(),
      },
    );
  }
}
