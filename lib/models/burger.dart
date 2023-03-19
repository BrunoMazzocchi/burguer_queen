import 'category.dart';
import 'ingredient.dart';

class Burger {
  final String? name;
  final String? description;
  final String? image;
  final double? price;
  final double? rating;
  final double? time;
  final List<Ingredient>? ingredients;
  final List<Category>? categories;

  Burger( {this.name, this.description, this.image, this.price, this.ingredients, this.categories, this.rating, this.time,});
}

List burgers = [
  Burger(
    name: 'Bacon with Jalapeno and cheese',
    description: 'Burger 1 description',
    image: 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_600,h_420/https://killerburger.com/wp-content/uploads/2023/01/berserkerlto-web-e1674082225690.png',
    price: 10.0,
    ingredients: [ingredients[0], ingredients[11], ingredients[1], ingredients[7]],
    categories: [categories[0], categories[1]],
    rating: 4.8,
    time: 15,
  ),
  Burger(
    name: 'Extra pickles and cheese',
    description: 'Burger 2 description',
    image: 'https://www.burgerking.com.mx/wp-media-folder-bk-mex//home/ubuntu/preview/menu-app/frontend/apps/marketing-website-wordpress-app/web/app/uploads/sites/3/Guacamole-Crunch-King-2.png',
    price: 12.0,
    ingredients: [ingredients[6], ingredients[7], ingredients[1], ingredients[5]],
    categories: [categories[0], categories[1]],
    rating: 4.8,
    time: 25,
  ),
  Burger(
    name: 'Classic with cheese',
    description: 'Burger 3 description',
    image: 'https://www.burgerking.com.mx/wp-media-folder-bk-mex//home/ubuntu/preview/menu-app/frontend/apps/marketing-website-wordpress-app/web/app/uploads/sites/3/Whopper-con-Queso-1.png',
    price: 15.0,
    ingredients: [ingredients[7], ingredients[1], ingredients[3], ingredients[4], ingredients[5]],
    categories: [categories[0], categories[1]],
    rating: 4.9,
    time: 5,
  ),
  Burger(
    name: 'Three meat floor',
    description: 'Burger 4 description',
    image: 'https://s3-eu-central-1.amazonaws.com/www.burgerking.com.ar.v2/wp-media-folder-burger-king-argentina//home/ubuntu/preview/menu-app/frontend/apps/marketing-website-wordpress-app/web/app/uploads/sites/5/Stacker-Triple.png',
    price: 20.0,
    ingredients: [ingredients[7], ingredients[0], ingredients[1]],
    categories: [categories[0], categories[1]],
    rating: 4.6,
    time: 12,
  ),
];