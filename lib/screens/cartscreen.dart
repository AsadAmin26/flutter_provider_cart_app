import 'package:cart_app/provider/itemcart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ItemCartProvider>(
      builder:
          (context, value, child) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightBlueAccent,
              title: Text('Cart'),
            ),
            body:
                value.itemlist.isEmpty
                    ? Center(child: Text('No Item added to Cart'))
                    : ListView.builder(
                      itemCount: value.itemlist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            if (value.itemlist.contains(index)) {
                              value.removeItem(index);
                            }
                          },
                          title: Text(
                            'Item ${index + 1}',
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Icon(
                            value.itemlist.contains(index)
                                ? Icons.remove
                                : Icons.add,
                          ),
                        );
                      },
                    ),
          ),
    );
  }
}
