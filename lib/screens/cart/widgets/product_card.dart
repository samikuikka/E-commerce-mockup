import 'package:dad_project_2/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../models/product.dart';

class ProductCard extends ConsumerWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Image.network(product.image, height: 200),
          Expanded(
              flex: 4,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(
                              product.title,
                              style: Theme.of(context).textTheme.headline5,
                            )),
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Text(
                                product.type,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //RIGHT SIDE
                      Flexible(
                        flex: 0,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      icon: Icon(Icons.remove_shopping_cart_outlined),
                                      onPressed: () {
                                          ref.watch(shoppingProvider.notifier).update((state) {
                                            List<Product> newState = [...state];
                                            newState.remove(product);
                                            state = newState;
                                            return newState;
                                          });
                                      },
                              )),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "\$ ${product.price.toStringAsFixed(2)}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
