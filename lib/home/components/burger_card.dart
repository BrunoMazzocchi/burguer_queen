import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../details/screen/burger_details.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget like() => Positioned(
        top: 10,
        right: 30,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 15,
            ),
          ),
        ));
    Widget starAndTime() => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            const Text(
              " 4.5 ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              width: 2,
              height: 15,
              color: Colors.grey,
            ),
            const Text(
              " 20 min",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        );
    Widget price() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.attach_money,
              color: Colors.yellow,
              size: 15,
            ),
            Text(
              "10.00",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
    Widget burgerImage() => const Hero(
        tag: "burger",
        child: Image(
          image: NetworkImage(
              "https://qph.cf2.quoracdn.net/main-qimg-e45b74969769e2579b6b1902494c6204"),
          width: 120,
          height: 100,
        ));
    Widget burgerTitle() => const Text(
          "Normal With Bacon",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        );

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPadding),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 10),
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.23),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BurgerDetailsScreen(),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                burgerImage(),
                burgerTitle(),
                starAndTime(),
                price(),
              ],
            ),
          ),
        ),
        like(),
      ],
    );
  }
}
