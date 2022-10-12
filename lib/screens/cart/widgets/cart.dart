import 'package:flutter/material.dart';
import '../../../models/product.dart';
import './product_card.dart';

class Cart extends StatelessWidget {
  final List<Product> products;

  const Cart({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
        elevation: 5,
        child: Container(
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your bag (${products.length} items)',
              style: Theme.of(context).textTheme.headline5,
            ),
            Expanded(
                child: products.isEmpty
                    ? Container()
                    : ListView.separated(
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: products[index]);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                          child: Center(
                            child: Container(
                              margin:
                                  EdgeInsetsDirectional.only(start: 1, end: 1),
                              height: 1,
                              width: width,
                              color: Color(0xffc7c7c7),
                            ),
                          ),
                        ),
                      ))
          ],
        ),
      ),
    ));
  }
}
