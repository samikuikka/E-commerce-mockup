import 'package:flutter/material.dart';
import './category_list.dart';
import './info.dart';
import './top_products.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryList(),
        Info(),
        TopProducts()
      ],
    );
  }
}