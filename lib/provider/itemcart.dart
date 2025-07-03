import 'package:flutter/material.dart';

class ItemCartProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  List _itemlist = [];

  List get itemlist => _itemlist;

  void addItem(int value) {
    _itemlist.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _itemlist.remove(value);
    notifyListeners();
  }
}
