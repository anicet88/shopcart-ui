import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });

  void toogleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}

final List<Product> demoProducts = [
  Product(
      id: 1,
      title: 'iPhone 12 Pro',
      description: 'A large phone with one of the best screens',
      price: 999.99,
      //use an image link
      image:
          'https://images.unsplash.com/photo-1502882705085-fd1fd2ecefd0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1512&q=80'),
  Product(
      id: 2,
      title: 'Macbook Pro',
      description: 'A large phone with one of the best screens',
      price: 1299.99,
      //use an image link
      image:
          'https://images.unsplash.com/photo-1502882705085-fd1fd2ecefd0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1512&q=80'),
  Product(
      id: 3,
      title: 'nike shoes',
      description: 'nike shoes is the best shoes in the world',
      price: 799.99,
      //use an image link
      image:
          'https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  Product(
      id: 4,
      title: 'wireless earphone',
      description: 'wireless earphone is the best earphone in the world',
      price: 299.99,
      image:
          'https://images.unsplash.com/photo-1655804439989-24758d6e96b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80'),
  Product(
      id: 5,
      title: 'playstation 5',
      description: 'playstation 5 is the best game console in the world',
      price: 499.99,
      image:
          'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  Product(
      id: 6,
      title: 'apple keyboard',
      description: 'apple keyboard is the best keyboard in the world',
      price: 199.99,
      image:
          'https://images.unsplash.com/photo-1499612657035-beb4431a3cdb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  Product(
      id: 7,
      title: 'apple mouse',
      description: 'apple mouse is the best mouse in the world',
      price: 99.99,
      image:
          'https://images.unsplash.com/photo-1619029584128-18c848f48e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
  Product(
      id: 8,
      title: 'modern bed',
      description: 'modern bed is the best bed in the world',
      price: 299.99,
      image:
          'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  Product(
      id: 9,
      title: 'modern sofa',
      description: 'modern sofa is the best sofa in the world',
      price: 399.99,
      image:
          'https://images.unsplash.com/photo-1540574163026-643ea20ade25?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  Product(
      id: 10,
      title: 'modern chair',
      description: 'modern chair is the best chair in the world',
      price: 199.99,
      image:
          'https://images.unsplash.com/photo-1533540227548-9fd63a4415fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80')
];
