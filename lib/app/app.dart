import 'package:burguer_queen/cart/screen/cart_screen.dart';
import 'package:burguer_queen/favorite/screen/favorite_screen.dart';
import 'package:burguer_queen/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  int _currentIndex = 0;

  List<BottomNavigationBarItem> items = [];

  @override
  void initState() {
    items =  [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
        ),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: "",
      ),
    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
             HomeScreen(),
             CartScreen(),
             FavoriteScreen(),
             Center(child: Text("Profile")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: items,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedIconTheme:  IconThemeData(
            size: 30,
            color: Colors.grey[800],
          ),
          unselectedIconTheme: const IconThemeData(
            size: 20,
            color: Colors.grey,
          ),

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
