import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../home/widgets/product_card.dart';
import '../../../providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Products extends ConsumerWidget {
  final String category;

  Products({required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(productProvider);
    final width = MediaQuery.of(context).size.width;
    int count = width ~/ 400 + 1;

    return data.when(
        data: (data) {
          final List<Product> products = data.where( (e) => e.type == category).toList();
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: count,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          );
          ;
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Text('loading..'));

    /* return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: product_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
          ),
          itemBuilder: (context, index) {

            return ProductCard(product: product_list[index]);
          },
        ),
      ),
    ); */
  }
}
