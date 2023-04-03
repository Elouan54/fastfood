import 'dart:async';

import 'package:fastfood/models/product.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key, required this.product});

  final Product product;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        backgroundColor: const Color.fromARGB(255, 92, 233, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.product.name),
            Text("${widget.product.price} €"),
            //Text("Ingredients :${widget.product.ingredients}"),
            Expanded(
              child: FittedBox(
                child: Image.asset(widget.product.image),
              ),
            )
          ],
        ),
      ),
    );
  }
}
