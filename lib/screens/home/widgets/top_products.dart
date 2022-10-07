import 'package:flutter/material.dart';
import '../../../models/product.dart';

class TopProducts extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    print(products);
    return Expanded(
      child: Text(products[0].title)
    );
  }
}