// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_cart/models/product.dart';
import 'package:shop_cart/provider/product_provider.dart';
import 'package:shop_cart/screens/cart_screen.dart';

import '../widgets/grid_product.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});
  static const routeName = '/shopping-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: const IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
                color: Colors.white,
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                  icon: const Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],
              title: const Text('Shopping Cart'),
            ),
            body: const ProductsGrid()));
  }
}

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final product = Provider.of<ProductProvider>(context);
    final demoProducts = product.items;

    return GridView.builder(
        itemCount: demoProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        // make sure to use ChangeNotifierProvider.value instead of Provider
        itemBuilder: ((context, index) => ChangeNotifierProvider.value(
            value: demoProducts[index], child: GridProduct())));
  }
}
/* 
<Product>(
            create: (BuildContext context) {
              return demoProducts[index];
            },
            // ignore: prefer_const_constructors
            child: GridProduct(
                /* id: demoProducts[index].id,
              title: demoProducts[index].title,
              image: demoProducts[index].image,*/
                ),
          )),
*/