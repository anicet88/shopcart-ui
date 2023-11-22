// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: FittedBox(
                            child: Text(
                                '\$${cart.items.values.toList()[index].price}'),
                          ),
                        ),
                      ),
                      title: Text(cart.items.values.toList()[index].title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'x${cart.items.values.toList()[index].quantity}'),
                          Text(
                              'Subtotal: \$${cart.items.values.toList()[index].price * cart.items.values.toList()[index].quantity}'),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          cart.removeItem(cart.items.keys.toList()[index]);
                        },
                        icon: const Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                      ),
                    ),
                  ),
                );
              },
            )),
            const SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total', style: TextStyle(fontSize: 20)),
                    const Spacer(),
                    Chip(
                      label: Text(
                        '\$${cart.totalAmount}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    TextButton(
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: const Text('ORDER NOW'),
                      style: TextButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
