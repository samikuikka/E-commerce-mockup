import 'package:flutter/material.dart';
import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print(product.id);
              },
              borderRadius: BorderRadius.circular(20),
              highlightColor: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Image.asset(product.image),
              ),
            )),
        Expanded(
          flex: 0,
          child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(product.title),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )),
        )
      ],
    );
  }
}
