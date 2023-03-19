import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/category.dart' as model;


class Category extends StatelessWidget {
  const Category({Key? key, required this.category}) : super(key: key);
  final model.Category category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        margin: const EdgeInsets.only(right: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey[400]!,
          ),
        ),
        child:  Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(category.image ?? ""),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              "${category.name}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
