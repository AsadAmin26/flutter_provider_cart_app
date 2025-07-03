import 'package:cart_app/provider/itemcart.dart';
import 'package:cart_app/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemCartProvider(),
      child: MaterialApp(home: HomeScreen()),
    );
  }
}
