import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final String title, type;
  const ProductName({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontSize: getFontSize(height, 20)),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
              fontSize: getFontSize(height, 40), fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Price extends StatelessWidget {
  final int price;
  const Price({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('25% off',
            style: TextStyle(
                fontSize: getFontSize(height, 20),
                color: const Color(0xfff44336))),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Text(
              "\$$price",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getFontSize(height, 22.5),
                  color: Color(0xfff44336)),
            ),
            const SizedBox(width: 10),
            Text(
              "\$${(price / 0.75).toStringAsFixed(2)}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff707070),
                  fontSize: getFontSize(height, 22.5),
                  decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "VAT included",
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: getFontSize(height, 20),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  final String description;

  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
        child: Container(
      child: Text(
        description,
        style: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(fontSize: getFontSize(height, 17)),
      ),
    ));
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Add to bag', style: TextStyle(fontSize: getFontSize(height, 25)),),
      )
    );
  }
}

double getFontSize(double height, double size) {
  return (size / 720) * height;
}
