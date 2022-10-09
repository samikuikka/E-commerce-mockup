import 'package:flutter/material.dart';
import './widgets/body.dart';
import '../../providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/shopping_cart.dart';


class HomeScreen extends ConsumerWidget {

  const HomeScreen({super.key});
  
  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final List<int> ids = ref.watch(shoppingProvider);
    return Scaffold(
      appBar: createAppBar(context, ids),
      body: Body(),
    );
  }

  AppBar createAppBar(BuildContext context, List list) {
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
        ShoppingCart()
      ],
    );
  }
}