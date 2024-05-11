import 'package:flutter/material.dart';

List products = [
  "🍔 Burger",
  "🍟 Fries",
  "🥙 Buritto",
  "🍖 meat",
  "🍆 egg planet",
  "🥚 egg",
  "🍩 donut",
  "🍦 ice cream",
  "🍰 cake",
  "☕️ coffe",
  "🍪 cookies"
];

List basket = [];

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => ProductState();
}

class ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (var i = 0; i < products.length; i++)
                  Chip(
                      label: Text(
                    products[i],
                    style:const TextStyle(
                      fontSize: 20,
                    ),
                  ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
