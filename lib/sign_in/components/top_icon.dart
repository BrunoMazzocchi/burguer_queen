
import 'package:flutter/material.dart';

class TopIcon extends StatelessWidget {
  const TopIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "BURGER\nQUEEN",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
