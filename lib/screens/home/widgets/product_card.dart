import 'package:flutter/material.dart';
import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int count;

  ProductCard({super.key, required this.product, required this.count});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    /* return Container(
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(10)),
        child: Image.asset(product.image)
      ); */
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            child: Image.asset(product.image),
          ),
        ),
        Expanded(
          flex: 0,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(product.title),
                Text('\$${product.price}', style: const TextStyle(fontWeight: FontWeight.bold),)
              ],
            )
          ),
        )
      ],
    );

    
  }
}
