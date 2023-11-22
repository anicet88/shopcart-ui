import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};
  Map<String, CartItem> get items {
    return {..._items};
  }

  //get total number of items in cart
  int get itemCount {
    return _items.length;
  }

  //get total amount of cart
  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  //method to remove item from cart
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  //method to clear cart
  void clear() {
    _items = {};
    notifyListeners();
  }

  //method to add item to cart
  void addItem(productId, double price, String title) {
    if (_items.containsKey(productId.toString())) {
      //change quantity...
      _items.update(
        productId.toString(),
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          quantity: existingCartItem.quantity + 1,
          price: existingCartItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId.toString(),
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          quantity: 1,
          price: price,
        ),
      );
    }
    notifyListeners();
  }
}
