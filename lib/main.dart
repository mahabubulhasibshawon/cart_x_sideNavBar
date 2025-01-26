import 'package:cart_page/screens/cart/cart_screen.dart';
import 'package:cart_page/screens/side_nav_bar/navigation_drawer_example.dart';
import 'package:cart_page/screens/side_nav_bar/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: CartScreen(),
    );
  }
}

