import 'package:flutter/material.dart';

import '../../constants.dart';
import '../components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    Widget profileImage() => Container(
          margin: const EdgeInsets.only(
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: const Image(
            image: NetworkImage(
                "https://alohe.github.io/memojis/assets/imgs/2821.png"),
          ),
        );
    Widget settingsButton() => Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: IconButton(
        icon: const Icon(Icons.settings,
            color: Colors.black, size: 20),
        onPressed: () {},
      ),
    );

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: settingsButton(),
      actions: [profileImage()],

    );
  }
}

