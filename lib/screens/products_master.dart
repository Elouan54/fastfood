import 'package:fastfood/screens/cart.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../providers/products_providers.dart';

class ProductsMaster extends StatefulWidget {
  const ProductsMaster({super.key});

  @override
  State<ProductsMaster> createState() => _ProductsMasterState();
}

class _ProductsMasterState extends State<ProductsMaster> {
  final List<Product> _produits = ProductsProvider.generateProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fast Food",
        ),
        backgroundColor: const Color.fromARGB(255, 92, 233, 255),
      ),
      body: ListView.builder(
        itemCount: _produits.length,
        itemBuilder: ((context, index) {
          var selection = true;
          return ListTile(
            title: Text(
              _produits[index].name,
              style: TextStyle(
                color: _produits[index].vegan
                    ? const Color.fromARGB(255, 0, 123, 27)
                    : const Color.fromARGB(255, 143, 0, 29),
              ),
            ),
            subtitle: Text('${_produits[index].price} ${"€"}'),
            tileColor: const Color.fromARGB(255, 232, 230, 233),
            leading: CircleAvatar(
              backgroundImage: AssetImage(_produits[index].image),
            ),
            trailing: selection
                ? const Icon(Icons.close, color: Colors.red)
                // ignore: dead_code
                : const Icon(Icons.done, color: Colors.green),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(product: _produits[index]),
                  ));
            },
          );
        }),
      ),
    );
  }
}
