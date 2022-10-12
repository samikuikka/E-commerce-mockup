import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../cart/widgets/product_card.dart';

class Body extends ConsumerStatefulWidget {
  final List<Product> products;

  Body({required this.products});

  @override 
  BodyState createState() => BodyState();
}

class BodyState extends ConsumerState<Body> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffc7c7c7),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.white,
            width: 400,
            child: Column(
              children: [
                Text('You bought:',
                style: Theme.of(context).textTheme.headline5,),

                Expanded(
                  child: ListView.builder(
                    itemCount: widget.products.length,
                    itemBuilder: ((context, index) {
                      return ProductCard(product: widget.products[index], fromCart: false);
                    })
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}