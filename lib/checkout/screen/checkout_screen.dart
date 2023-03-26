import 'package:flutter/material.dart';

import '../../models/burger.dart';
import '../components/body.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key, required this.cart}) : super(key: key);
  final List<List<Burger>> cart;

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() => AppBar(
          title: const Text(
            'Payment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        );
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(cart: cart),
    );
  }
}
