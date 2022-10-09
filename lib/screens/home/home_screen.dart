import 'package:flutter/material.dart';
import './widgets/body.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/shopping_cart.dart';
import '../../widgets/user.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return Scaffold(
        drawer: createDrawer(context),
        appBar: createAppBar(context),
        body: Body(),
      );
    }
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(),
    );
  }

  Drawer createDrawer(BuildContext context) {
    List<String> categories = [
      'Clothing',
      'Shoes',
      'Sports',
      'Accessories',
      'Designer'
    ];
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            
            child: Center(child: Text('Categories', style: Theme.of(context).textTheme.headline4,)),
          ),
          ...categories.map((e) {
            return ListTile(
              title: Text(e),
              onTap: () {
                context.push('/category/$e');
              }
            );
          })
        ],
      ),
    );
  }

  AppBar createAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color:  Colors.black),
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
        const ShoppingCart(),
        const UserIcon()
      ],
    );
  }
}
