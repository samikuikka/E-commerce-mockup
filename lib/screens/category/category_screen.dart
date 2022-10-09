import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './widgets/body.dart';
import '../../widgets/shopping_cart.dart';

class Category extends StatelessWidget {
  final String category;

  const Category({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(category: category),
    );
  }

  AppBar createAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          context.go('/');
        },
      ),
      title: const Text(
        'Shop',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        ShoppingCart()
      ],
    );
  }
}
