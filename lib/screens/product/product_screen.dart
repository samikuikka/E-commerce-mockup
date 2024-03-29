import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/product.dart';
import './widgets/body.dart';
import '../../providers/provider.dart';
import '../../widgets/shopping_cart.dart';
import '../../widgets/user.dart';
import '../../widgets/search_button.dart';

class ProductScreen extends ConsumerWidget {
  final int product_id;

  const ProductScreen({super.key, required this.product_id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(productProvider);
    
    return data.when(
        data: (data) {
          final Product product = data.singleWhere((e) => e.id == product_id);
          return Scaffold(
            appBar: createAppBar(context, product.color),
            body: Body(product: product),
          );
        },
        error: (err, s) => Scaffold(
            appBar: createAppBar(context, Colors.white),
            body: Text(err.toString())),
        loading: () => Scaffold(
            appBar: createAppBar(context, Colors.white),
            body: const Text('loading')));
  }

  AppBar createAppBar(BuildContext context, Color color) {
    return AppBar(
      backgroundColor: color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          if (GoRouter.of(context).canPop()) {
            context.pop();
          } else {
            context.go('/');
          }
        },
      ),
      actions: [
        SearchIcon(),
        const ShoppingCart(),
        const UserIcon()
      ],
    );
  }
}
