import 'package:flutter/material.dart';

import '../../constants.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2,
          horizontal: kDefaultPadding / 2),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding,
          horizontal: kDefaultPadding / 2),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: const  BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
          const    Text("🧀",
            style:  TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text("Cheese",
            style:  TextStyle(
              color: Colors.grey[600],
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
