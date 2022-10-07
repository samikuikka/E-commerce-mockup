import 'package:flutter/material.dart';
import '../../../models/product.dart';
import './product_card.dart';

class TopProducts extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    int count = width ~/ 400 + 1;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child:GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
          ),
          itemBuilder: (context, index) {
            final Product product = products[index];
            return ProductCard(product: product, count: count);
            
          },
        )
      )
    );
  }
}