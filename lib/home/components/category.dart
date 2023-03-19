import 'package:flutter/material.dart';

import '../../constants.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        margin: const EdgeInsets.only(right: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.grey[400]!,
          ),
        ),
        child:  Text(category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
