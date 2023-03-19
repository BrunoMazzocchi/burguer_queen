import 'package:burguer_queen/sign_in/components/slogan_and_login_options.dart';
import 'package:burguer_queen/sign_in/components/top_icon.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://assets.unileversolutions.com/recipes-v2/232055.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            // Brand icon at the top of the screen
            TopIcon(),
            // Slogan and login buttons
            SloganAndLoginOptions()
          ]),
    );
  }
}
