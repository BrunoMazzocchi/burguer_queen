import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../home/components/burger_card.dart';
import '../../models/burger.dart';
import '../../models/category.dart';
import '../../models/ingredient.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        padding: const EdgeInsets.only(
          top: kDefaultPadding,
          left: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return BurgerCard(
            burger:   Burger(
              name: 'Classic with cheese',
              description: 'Burger 3 description',
              image: 'https://www.burgerking.com.mx/wp-media-folder-bk-mex//home/ubuntu/preview/menu-app/frontend/apps/marketing-website-wordpress-app/web/app/uploads/sites/3/Whopper-con-Queso-1.png',
              price: 15.0,
              ingredients: [ingredients[7], ingredients[1], ingredients[3], ingredients[4], ingredients[5]],
              categories: [categories[0], categories[1]],
              rating: 4.9,
              time: 5,
            ),);
        }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 5,
        childAspectRatio: 0.75,
      ),
      ),
    );
  }
}
