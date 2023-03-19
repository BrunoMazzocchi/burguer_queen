import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../home/components/ingredient_card.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const IngredientCard(),
          ),
        ),
      ],
    );
  }
}
