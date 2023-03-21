import 'package:flutter/material.dart';

import '../../app/app.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Your cart is empty",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              )),
          const Text("Looks like you haven't added anything to your cart yet",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const App(),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Start shopping"))
        ]));
  }
}
