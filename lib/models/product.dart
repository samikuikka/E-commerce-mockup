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
    image: "assets/images/black-shirt.jpg", 
    title: "Black shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(255, 165, 111, 237)
  ),
  Product(
    id: 1,
    type: 'Clothing',
    image: "assets/images/white-shirt.jpg", 
    title: "Black shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(166, 153, 27, 107)
  ),
];