import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/category.dart' as model;
import 'category.dart';

class TitleSearchBarAndCategories extends StatelessWidget {
  const TitleSearchBarAndCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find and order",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            "burger for you 🍔",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          TextField(
            decoration: InputDecoration(
              hintText: "Find your burger",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              prefixIcon: const  Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey[150],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusColor: Colors.grey[150],
              prefixIconColor: Colors.grey,
            ),

          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: model.categories.length,
              itemBuilder: (context, index) => Category(category: model.categories[index]),
            ),
          ),
          const SizedBox(height: kDefaultPadding),

        ],
      ),
    );
  }
}
