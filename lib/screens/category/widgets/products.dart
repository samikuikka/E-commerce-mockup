import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../home/widgets/product_card.dart';

class Products extends StatefulWidget {
  final String category;

  Products({required this.category});

  @override
  ProductsState createState() => ProductsState();
}

class ProductsState extends State<Products> {

  @override 
  Widget build(BuildContext context) {
    List<Product> product_list = products.where((element) => element.type == widget.category).toList();
    final width = MediaQuery.of(context).size.width;
    int count = width ~/ 400 + 1;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: product_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: product_list[index]);
          },
        ),
      ),
    );
  }
}