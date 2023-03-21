import 'package:flutter/material.dart';
import '../components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    AppBar buildAppBar() =>  AppBar(
      title: const Text('Cart',
          style: TextStyle(
            color: Colors.black,
          )),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    );


    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
