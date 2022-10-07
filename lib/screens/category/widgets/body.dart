import 'package:flutter/material.dart';

import './products.dart';

class Body extends StatelessWidget {
  final String category;

  const Body({super.key, required this.category});

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            category,
            style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(fontWeight: FontWeight.bold),
            ),
        ),
        Products(category: category),
      ],
    );
  }
}