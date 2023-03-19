import 'package:flutter/material.dart';

import '../../constants.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: const Text(
            "Description",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child:  Text(
          description,
            style: const  TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}
