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
          ),
          decoration: BoxDecoration(
            color: Colors.red[100],
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
            bottom: kDefaultPadding / 2,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        );

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: settingsButton(),
      actions: [profileImage()],
    );
  }
}

