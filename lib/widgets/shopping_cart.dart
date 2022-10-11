import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/provider.dart';
import 'package:go_router/go_router.dart';
import '../models/product.dart';

class ShoppingCart extends ConsumerWidget {
  
  const ShoppingCart({super.key});

  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> list = ref.watch(shoppingProvider);
    return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                context.push('/cart');
              },
            ),
            Positioned(
              top: 6,
              right: 3,
              child: Stack(
                children:  [
                  const Icon(
                    Icons.brightness_1,
                    size: 20,
                    color: Colors.red,
                  ),
                  Positioned(
                    top: 3,
                    right: 5,
                    child: Center(
                      child: Text(
                        "${list.length}",
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                        ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
  }
}