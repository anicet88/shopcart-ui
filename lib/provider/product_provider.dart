import 'package:flutter/material.dart';
import 'package:shop_cart/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = demoProducts;

  List<Product> get items {
    return [..._items];
  }

  Product findById(int id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
