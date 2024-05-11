import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Info extends StatelessWidget {
  String productName;

  Info({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            productName,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900),
          ),
          SizedBox(
            height: 100,
          ),
          Text("""Adipisicing tempor sint minim exercitation excepteur eiusmod incididunt velit in qui nisi pariatur quis minim. Culpa nulla esse consequat sunt non velit sit proident officia. Dolore consequat anim tempor culpa duis non ad quis aute. Ipsum aliqua ipsum id duis pariatur. Elit exercitation mollit cupidatat mollit ut Lorem.

Est veniam culpa nisi labore. Incididunt eu sunt adipisicing aliqua esse cupidatat anim amet qui ipsum. Nisi est excepteur ullamco in elit ea cillum mollit occaecat elit labore.

Elit cillum consectetur mollit qui. Elit cupidatat aute eu quis. Adipisicing ullamco id sint labore non officia adipisicing cillum cillum ea. Ullamco fugiat reprehenderit irure et non.""")
        ],
      ),
    );
  }
}
