import 'package:flutter/material.dart';

import '../../constants.dart';

class ImageAndRating extends StatelessWidget {
  const ImageAndRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPadding * 3),
          child: Hero(
            tag: "burger",
            child: Image.network(
                "https://qph.cf2.quoracdn.net/main-qimg-e45b74969769e2579b6b1902494c6204"),
          ),
        ),
        Container(
          width: 70,
          decoration:  BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 20,
              ),
              Text(
                "4.5",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
