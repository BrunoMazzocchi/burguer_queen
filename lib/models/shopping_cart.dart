import 'burger.dart';
class ShoppingCart {

  final totalPrice = 0.0;
  final discount = 0.0;


  final List<List<Burger>> _items = [];

  List<List<Burger>> get items => _items;
  add(Burger burger) {
    _items.add([burger]);
  }
  remove(Burger burger) {
    _items.remove([burger]);
  }

  double get total => totalPrice - discount;
  double get totalDiscount => discount;
  double get totalWithoutDiscount => totalPrice;


  List<Burger> baconBurgers = [];

}