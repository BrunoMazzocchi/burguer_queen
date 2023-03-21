import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../../constants.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Center(
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
            SizedBox(
              height: size.height * 0.05,
              width: size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
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
                  child: const Text("Start shopping")),
            )
          ])),
    );
  }
}
