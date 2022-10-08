import 'package:flutter/material.dart';
import '../../../models/product.dart';
import './product_info.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - kToolbarHeight - 40;
    int count = width > 600 ? 2 : 1;

    return Container(
      color: product.color,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: count,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: (width / count) / height),
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                width: double.infinity,
                child: Image.network(product.image),
              );
            }
            return Material(
              borderRadius: BorderRadius.circular(20),
                elevation: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(250, 250, 250, 100),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ProductInfo(product: product),
                )
              );
          },
        ),
      ),
    );
  }
}
