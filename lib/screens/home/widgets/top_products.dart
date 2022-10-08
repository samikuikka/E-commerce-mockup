import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../models/product.dart';
import './product_card.dart';
import '../../../providers/provider.dart';

class TopProducts extends ConsumerWidget {

  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final _data = ref.watch(productProvider);
    int count = width ~/ 400 + 1;

    return _data.when(
      data: (_data) {
        return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child:GridView.builder(
          itemCount: _data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
          ),
          itemBuilder: (context, index) {
            final Product product = _data[index];
            return ProductCard(product: product);
            
          },
        )
      )
    );
      },
      error: (err, s) => Text(err.toString()),
      loading: () => const Text('loading...')
    );

  }
}