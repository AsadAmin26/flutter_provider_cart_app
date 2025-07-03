import 'package:cart_app/provider/itemcart.dart';
import 'package:cart_app/screens/cartscreen.dart';
import 'package:cart_app/screens/itemscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProider = Provider.of<ItemCartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Chart App'),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CartScreen()),
                );
              },
              child:
                  cartProider.itemlist.isEmpty
                      ? Icon(Icons.shopping_cart_outlined)
                      : Icon(Icons.shopping_cart_rounded),
            ),
          ],
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ItemScreen(),
    );
  }
}
