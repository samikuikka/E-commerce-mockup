import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<CategoryList> {
  List<String> categories = [
    'Clothing',
    'Shoes',
    'Sports',
    'Accessories',
    'Designer'
  ];
  int? selected;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 30,
        child: width < 1000 ? ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => createCategory(index, context),
        ) : Row(
          children: categories.asMap().entries.map((e) {
            int index = e.key;
            return Expanded(
              child: createCategory(index, context)
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget createCategory(int index, BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextButton(
              onHover: ((event) {
                setState(() {
                  selected = index;
                });
              }),
              onPressed: (() {
                context.go('/category/${categories[index]}');
              }),
              child: Text(
                categories[index],
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ),
            Container(
              height: 2,
              width: 30,
              color: selected == index ? Colors.black : Colors.transparent,
            )
          ],
        )
      );
  }
}
