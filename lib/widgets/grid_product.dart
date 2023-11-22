import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_cart/provider/cart_provider.dart';
import 'package:shop_cart/screens/product_detail_screen.dart';

import '../models/product.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({Key? key}) : super(key: key);
  /*final int id;
  final String title;
  final String image;*/
  @override
  Widget build(BuildContext context) {
    //final product = Provider.of<Product>(context);
    // ignore: unused_local_variable
    final cart = Provider.of<Cart>(context);
    return Consumer<Product>(
      builder: (context, product, child) => GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
        },
        child: GridTile(
          // ignore: sort_child_properties_last
          child: Image.network(
            product.image,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              onPressed: () {
                product.toogleFavorite();
              },
              icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Colors.white,
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              onPressed: () {
                cart.addItem(product.id, product.price, product.title);
              },
              icon: const Icon(Icons.shopping_cart_checkout),
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
