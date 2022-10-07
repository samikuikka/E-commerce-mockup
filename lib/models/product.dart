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
    color: Color.fromARGB(82, 15, 9, 23)
  ),
  Product(
    id: 2,
    type: 'Clothing',
    image: "assets/images/white-shirt.png", 
    title: "White shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(129, 241, 235, 239)
  ),
  Product(
    id: 3,
    type: 'Clothing',
    image: "assets/images/blue-shirt.png", 
    title: "Blue shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(152, 35, 198, 227)
  ),
  Product(
    id: 4,
    type: 'Clothing',
    image: "assets/images/brown-shirt.png", 
    title: "Brown shirt", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(158, 202, 134, 45)
  ),
  Product(
    id: 5,
    type: 'Shoes',
    image: "assets/images/black-shoe.png", 
    title: "Black shoe", 
    description: dummyText, 
    price: 75,
    sellCount: 35, 
    color: Color.fromARGB(82, 15, 9, 23)
  ),
  Product(
    id: 6,
    type: 'Shoes',
    image: "assets/images/blue-shoe.png", 
    title: "Blue shoe", 
    description: dummyText, 
    price: 75,
    sellCount: 35, 
    color: Color.fromARGB(82, 30, 146, 209)
  ),
  Product(
    id: 7,
    type: 'Shoes',
    image: "assets/images/brown-shoe.png", 
    title: "Brown shoe", 
    description: dummyText, 
    price: 100,
    sellCount: 35, 
    color: Color.fromARGB(223, 128, 81, 0)
  ),
  Product(
    id: 8,
    type: 'Shoes',
    image: "assets/images/white-shoe.png", 
    title: "White shoe", 
    description: dummyText, 
    price: 80,
    sellCount: 35, 
    color: Color.fromARGB(159, 227, 225, 230)
  ),
];