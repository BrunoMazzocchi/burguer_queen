import 'package:burguer_queen/home/components/popular_burger.dart';
import 'package:burguer_queen/home/components/title_search_bar_and_categories.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleSearchBarAndCategories(),
            PopularBurger(),
          ],
        )),
      ),
    );
  }
}
