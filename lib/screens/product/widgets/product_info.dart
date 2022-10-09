import 'package:flutter/material.dart';
import '../../../models/product.dart';
import './info.widgets.dart';

class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductName(title: product.title, type: product.type),
            SizedBox(height: height*0.025),
            Price(price: product.price),
            SizedBox(height: height*0.05),
            Description(description: product.description),
            AddToCart(id: product.id,)

          ],
        ),
      ),
    );
  }
}

double getFontSize(double height, double size) {
  return (size / 720) * height;
}
