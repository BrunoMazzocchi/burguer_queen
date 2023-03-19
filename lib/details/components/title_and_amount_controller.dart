import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleAndAmountController extends StatelessWidget {
  const TitleAndAmountController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding),
        child: Row(
          children: [
            SizedBox(
              width: size.width /2,
              child: const Text("Normal burger with bacon",
                style:  TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                  const Text(
                    "1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
