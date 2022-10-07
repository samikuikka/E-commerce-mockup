import 'package:flutter/material.dart';

class Product {
  final String image, title, description, type;
  final int price, id, sellCount;
  final Color color;
  
  Product({
    required this.id,
    required this.type,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.sellCount,
    required this.color
  });
}

const String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis sollicitudin lacus tempor ullamcorper. Nunc dolor tellus, pulvinar non iaculis at, posuere et leo. Maecenas pellentesque risus libero, a facilisis libero dictum a. Nam leo orci, maximus eget sodales in, auctor ac massa.";

List<Product> products = [
  Product(
    id: 1,
    type: 'Clothing',
    image: "assets/images/black-shirt.png", 
    title: "Black shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(204, 15, 9, 23)
  ),
  Product(
    id: 2,
    type: 'Clothing',
    image: "assets/images/white-shirt.png", 
    title: "White shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(166, 241, 235, 239)
  ),
  Product(
    id: 3,
    type: 'Clothing',
    image: "assets/images/blue-shirt.png", 
    title: "Blue shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(255, 35, 198, 227)
  ),
  Product(
    id: 4,
    type: 'Clothing',
    image: "assets/images/brown-shirt.png", 
    title: "Brown shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(255, 202, 134, 45)
  ),
];