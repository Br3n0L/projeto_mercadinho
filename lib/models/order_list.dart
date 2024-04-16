import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projeto_login_page/models/order.dart';
import 'package:projeto_login_page/pages/cart.dart';

class OrderList with ChangeNotifier {
  List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  void addOrder(Cart cart) {
    _items.insert(
        0,
        Order(
            id: Random().nextDouble().toString(),
            total: cart.totalAmount,
            products: cart.items.values.toList(),
            date: DateTime.now()));
    notifyListeners();
  }
}
