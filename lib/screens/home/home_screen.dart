import 'package:flutter/material.dart';
import './widgets/body.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      body: Body(),
    );
  }

  AppBar createAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
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
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}