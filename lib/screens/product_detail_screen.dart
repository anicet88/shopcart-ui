import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var id = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        appBar: AppBar(
      title: const Text('Product Detail'),
    ));
  }
}
