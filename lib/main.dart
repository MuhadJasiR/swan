import 'package:flutter/material.dart';
import 'package:swan/view/cart/cart_screen.dart';
import 'package:swan/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: ProductDetailPage(),
    );
  }
}
