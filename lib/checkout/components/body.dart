import 'package:burguer_queen/checkout/components/payment.dart';
import 'package:burguer_queen/constants.dart';
import 'package:flutter/material.dart';

import '../../models/burger.dart';
import 'address.dart';
import 'make_payment.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.cart}) : super(key: key);
  final List<List<Burger>> cart;

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Address(),
          Payment(),
          SizedBox(height: kDefaultPadding * 4),
          MakePayment(),
        ],
    );
  }
}


