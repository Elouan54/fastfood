import 'package:fastfood/models/product.dart';
import 'package:faker/faker.dart';

class ProductsProvider {
  static List<Product> generateProducts() {
    List<String> bouffe = [
      'Salad xxl',
      'Maxi burger',
      'Pizza crème',
      'Tacosss',
      'Maxi kebab',
      'Pizza tomate',
      'Banane flambée',
      'Fondant choc',
      'Brownie',
      'Rhum au baba'
    ];
    return List.generate(
        10,
        (index) => Product(
            name:
                '${bouffe[random.integer(10, min: 0)]}${' '}${faker.color.color()}',
            image: 'assets/images/${random.integer(26, min: 1)}.png',
            price: random.integer(10, min: 5),
            vegan: random.boolean()));
  }
}
