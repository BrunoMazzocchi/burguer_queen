import 'package:burguer_queen/models/ingredient.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({Key? key, required this.ingredient}) : super(key: key);
  final Ingredient ingredient;
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
          Image.network("${ingredient.image}",
            width: 50,
            height: 50,
          ),
          Text("${ingredient.name}",
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
