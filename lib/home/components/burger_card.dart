import 'package:burguer_queen/models/burger.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../details/screen/burger_details.dart';

class BurgerCard extends StatelessWidget {
  const BurgerCard({Key? key, required this.burger}) : super(key: key);
  final Burger burger;
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
             Text(
              " ${burger.rating} ",
              style: const TextStyle(
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
             Text(
              " ${burger.time} min",
              style: const TextStyle(
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
          children:  [
            const  Icon(
              Icons.attach_money,
              color: Colors.yellow,
              size: 15,
            ),
            Text(
              "${burger.price}",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
    Widget burgerImage() =>  Hero(
        tag: burger,
        child: Image(
          image: NetworkImage(
              "${burger.image}"),
          width: 120,
          height: 100,
        ));
    Widget burgerTitle() => SizedBox(
      width: 120,
      child: Text(
        "${burger.name}",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        maxLines: 2,
        textAlign: TextAlign.center,
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
                  builder: (context) =>  BurgerDetailsScreen(burger: burger,),
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
