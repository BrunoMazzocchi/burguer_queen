import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/burger.dart';
import '../../models/category.dart';
import '../../models/ingredient.dart';

class NotEmptyCart extends StatefulWidget {
  const NotEmptyCart({Key? key}) : super(key: key);

  @override
  State<NotEmptyCart> createState() => _NotEmptyCartState();
}

class _NotEmptyCartState extends State<NotEmptyCart> {
  late List<List<Burger>> cart = [];
  int totalPay = 0;
  final burger = Burger(
    name: 'Bacon with Jalapeno and cheese',
    description: 'Burger 1 description',
    image:
        'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_600,h_420/https://killerburger.com/wp-content/uploads/2023/01/berserkerlto-web-e1674082225690.png',
    price: 10.0,
    ingredients: [
      ingredients[0],
      ingredients[11],
      ingredients[1],
      ingredients[7]
    ],
    categories: [categories[0], categories[1]],
    rating: 4.8,
    time: 15,
  );
  final burger2 = Burger(
    name: 'Extra pickles and cheese',
    description: 'Burger 2 description',
    image:
        'https://www.burgerking.com.mx/wp-media-folder-bk-mex//home/ubuntu/preview/menu-app/frontend/apps/marketing-website-wordpress-app/web/app/uploads/sites/3/Guacamole-Crunch-King-2.png',
    price: 12.0,
    ingredients: [
      ingredients[6],
      ingredients[7],
      ingredients[1],
      ingredients[5]
    ],
    categories: [categories[0], categories[1]],
    rating: 4.8,
    time: 25,
  );

  @override
  initState() {
    cart.add([burger, burger, burger]);
    cart.add([burger2]);
    totalPay = cart.fold(0, (previousValue, element) {
      return previousValue + element[0].price!.toInt() * element.length;
    });
    super.initState();
  }

  Widget burgerListTile(List<List<Burger>> cart, int index, Size size) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(
          cart[index][0].name!,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
        leading: SizedBox(
          width: size.width * 0.20,
          height: size.height * 0.1,
          child: Image.network(cart[index][0].image!),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              cart.remove(cart[index]);
            });
          },
          icon: const Icon(Icons.delete),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$ ${cart[index][0].price! * cart[index].length}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (cart[index].length > 1) {
                          totalPay -= cart[index][0].price!.toInt();
                          cart[index].remove(cart[index][0]);
                        }
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ),
                Text(cart[index].length.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      totalPay += cart[index][0].price!.toInt();
                      cart[index].add(cart[index][0]);
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget totalToPayRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Total:',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        Text('\$${totalPay.toString()}',
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }

  Widget elevatedCheckoutButton(Size size) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 35,
            spreadRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      width: size.width,
      height: size.height * 0.06,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 2, vertical: kDefaultPadding / 2),
        ),
        onPressed: () {},
        child: const Text('Checkout'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return burgerListTile(cart, index, size);
                },
              ),
            ),
            const SizedBox(height: 10),
            totalToPayRow(),
            const SizedBox(height: 10),
            elevatedCheckoutButton(size),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
