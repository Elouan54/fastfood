import 'package:uuid/uuid.dart';

class Product {
  String? id = const Uuid().v4();
  String name;
  String image;
  List<String>? ingredients;
  int price;
  bool vegan = false;

  Product(
      {this.id,
      required this.name,
      required this.image,
      this.ingredients,
      required this.price,
      required this.vegan});
}
