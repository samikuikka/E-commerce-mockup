import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => createCategory(index),
        ),
      ),
    );
  }

  Widget createCategory(int index) {
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
                print(index);
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
