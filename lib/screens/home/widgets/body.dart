import 'package:flutter/material.dart';
import './category_list.dart';
import './info.dart';
import './top_products.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override 
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        width < 600 ? Container() : const CategoryList(),
        Info(),
        TopProducts()
      ],
    );
  }
}