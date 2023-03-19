import 'package:burguer_queen/constants.dart';
import 'package:burguer_queen/details/components/image_and_rating.dart';
import 'package:burguer_queen/details/components/title_and_amount_controller.dart';
import 'package:flutter/material.dart';

import '../../home/components/ingredient_card.dart';
import 'description.dart';
import 'ingredients.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ImageAndRating(),
              TitleAndAmountController(),
              Ingredients(),
              Description(),
            ],
          ),
        ),
  );
  }
}
