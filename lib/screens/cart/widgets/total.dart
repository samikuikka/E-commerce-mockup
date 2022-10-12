import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  final double price;
  final double width;
  const Total({super.key, required this.price, required this.width});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              child: Row(
                children: [
                  const Expanded(
                    child: Text('Subtotal'),
                  ),
                  Expanded(
                    child: Text(
                      "\$ ${price.toStringAsFixed(2)}",
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              child: Row(
                children: const [
                  Expanded(
                    child: Text('Delivery'),
                  ),
                  Expanded(
                    child: Text(
                      "\$ 0.00",
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 10,
              child: Center(
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 1, end: 1),
                  height: 1,
                  width: width,
                  color: Color(0xffc7c7c7),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'Total (VAT included)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                    flex: 0,
                    child: Text(
                      "\$ ${price.toStringAsFixed(2)}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
                width: width,
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(width, 40)),
                  onPressed: () {},
                  child: const Text('GO TO CHECKOUT'),
                ))
          ],
        ),
      ),
    );
  }
}
