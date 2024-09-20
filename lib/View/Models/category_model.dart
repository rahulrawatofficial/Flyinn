
import 'package:flyinn/View/utils/Theme/assets_constantes.dart';

class Category {
  final String designation;
  final String link;
  Category({required this.designation, required this.link});
}

List<Category> categories = [
  Category(designation: "Burger", link: AssetsConstants.burger),
  Category(designation: "Taco", link: AssetsConstants.taco),
  Category(designation: "Drink", link: AssetsConstants.drink),
  Category(designation: "Pizza", link: AssetsConstants.pizza),
];
