import 'package:cart_app/provider/itemcart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ItemCartProvider>(
      builder:
          (context, value, child) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlueAccent,
              title: Text(
                'Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (value.itemlist.contains(index)) {
                      value.removeItem(index);
                    } else {
                      value.addItem(index);
                    }
                  },
                  title: Text(
                    'Item ${index + 1}',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Icon(
                    value.itemlist.contains(index) ? Icons.remove : Icons.add,
                  ),
                );
              },
            ),
          ),
    );
  }
}
