import 'package:flutter/material.dart';
import 'package:shop_cart/provider/cart_provider.dart';
import 'package:shop_cart/provider/product_provider.dart';
import 'package:shop_cart/screens/cart_screen.dart';
import 'package:shop_cart/screens/product_detail_screen.dart';
import 'package:shop_cart/screens/shopping_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (BuildContext context) => ProductProvider()),
          ChangeNotifierProvider(create: (BuildContext context) => Cart())
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(title: 'Flutter Demo'),
          routes: {
            ShoppingScreen.routeName: (context) => const ShoppingScreen(),
            ProductDetailScreen.routeName: (context) =>
                const ProductDetailScreen(),
            CartScreen.routeName: (context) => const CartScreen()
          },
          //home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const ShoppingScreen();
  }
}
