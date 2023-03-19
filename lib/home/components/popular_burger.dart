
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/burger.dart';
import 'burger_card.dart';

class PopularBurger extends StatelessWidget {
  const PopularBurger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most popular",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 280,
          child: ListView.builder(
              padding: const EdgeInsets.all(kDefaultPadding),
              itemCount: burgers.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => BurgerCard(
                    burger: burgers[index],
                  )
          ),
        )
      ],
    );
  }
}
