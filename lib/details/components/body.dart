import 'package:burguer_queen/details/components/image_and_rating.dart';
import 'package:burguer_queen/details/components/title_and_amount_controller.dart';
import 'package:flutter/material.dart';

import '../../models/burger.dart';
import 'description.dart';
import 'ingredients.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key, required this.burger,
  }) : super(key: key);
  final Burger burger;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              ImageAndRating(burger: burger,),
               TitleAndAmountController(title: "${burger.name}" ),
               Ingredients(ingredients: burger.ingredients),
                Description(description: "${burger.description}" ),
            ],
          ),
        ),
  );
  }
}
