import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/shopping_cart.dart';
import '../../widgets/user.dart';
import '../../widgets/search_button.dart';
import './widgets/body.dart';

class SettingsScreen extends StatelessWidget {

  const SettingsScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(),
    );
  }

  AppBar createAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
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
        SearchIcon(),
        const ShoppingCart(),
        const UserIcon()
      ]
    );
  }

}