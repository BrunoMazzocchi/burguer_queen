import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleAndAmountController extends StatefulWidget {
  const TitleAndAmountController({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TitleAndAmountController> createState() => _TitleAndAmountControllerState();
}

class _TitleAndAmountControllerState extends State<TitleAndAmountController> {
  int amount = 1;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding),
        child: Row(
          children: [
            SizedBox(
              width: size.width / 2.5,
              child:  Text(widget.title,
                style:  const TextStyle(
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
                    onPressed: () {
                      setState(() {
                        if (amount > 1) {
                          amount--;
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 15,
                    ),
                    disabledColor: Colors.grey,
                  ),
                   Text(
                    amount.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        amount++;
                      });
                    },
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
