import 'package:flutter/material.dart';
import '../settings/settings_screen.dart';
import './widgets/body.dart';
import '../../models/product.dart';


class CheckoutCompleteScreen extends StatelessWidget {
  final List<Product> products;

  CheckoutCompleteScreen({required this.products});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(products: products),
    );
  }
}