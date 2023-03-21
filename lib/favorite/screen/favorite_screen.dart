import 'package:flutter/material.dart';

import '../components/body.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() => AppBar(
      centerTitle: true,
      title: const Text('Your Favorites',
          style: TextStyle(
            color: Colors.black,
          )),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: null,
    );

    return Scaffold(
      appBar: buildAppBar(),
      body:const  Body(),
    );
  }
}
