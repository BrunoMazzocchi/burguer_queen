import 'package:flutter/material.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container(
        width: size.width,
        height: size.height * 0.35,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, -10)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.85,
              height: size.height * 0.075,
              decoration:  BoxDecoration(
                color: Colors.orange[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.orangeAccent),
                shape: BoxShape.rectangle,
              ),
              child: const Center(
                child:  Text(
                  "Enter your discount code",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              height: size.height * 0.075,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const   [
                  Text("Total: \$ 20.00",
                      style:  TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      )),
                  Text("Discount: \$ 0.00",
                      style:  TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      )),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.85,
              height: size.height * 0.075,
              child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onPressed: (){}, child:  const Text("Make Payment",
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ))),
            ),
          ],
        )
    );
  }
}
