import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../home/components/ingredient_card.dart';
import '../../models/ingredient.dart' as model;
class Ingredients extends StatelessWidget {
  final List<model.Ingredient>? ingredients;
  const Ingredients({Key? key, required this.ingredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: const Text(
            "Ingredients",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(
          height: 130,
          width: size.width,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: ingredients!.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => IngredientCard(
              ingredient: ingredients![index],
            )
          ),
        ),
      ],
    );
  }
}
