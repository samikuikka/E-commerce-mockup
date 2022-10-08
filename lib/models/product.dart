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
  Product(
    id: 9,
    type: 'Accessories',
    image: "assets/images/blue-glasses.png", 
    title: "Blue sunglasses", 
    description: dummyText, 
    price: 120,
    sellCount: 50, 
    color: Color.fromARGB(159, 38, 97, 206)
  ),
  Product(
    id: 10,
    type: 'Accessories',
    image: "assets/images/blue-hat.png", 
    title: "Blue hat", 
    description: dummyText, 
    price: 75,
    sellCount: 40, 
    color: Color.fromARGB(159, 19, 81, 196)
  ),
  Product(
    id: 11,
    type: 'Accessories',
    image: "assets/images/gold-glasses.png", 
    title: "Gold Sunglasses", 
    description: dummyText, 
    price: 120,
    sellCount: 40, 
    color: Color.fromARGB(159, 217, 157, 16)
  ),
  Product(
    id: 12,
    type: 'Accessories',
    image: "assets/images/pink-hat.png", 
    title: "Pink hat", 
    description: dummyText, 
    price: 80,
    sellCount: 35, 
    color: Color.fromARGB(159, 206, 38, 181)
  ),
  Product(
    id: 13,
    type: 'Sports',
    image: "assets/images/black-shorts.png", 
    title: "Black sports shorts", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(157, 10, 0, 9)
  ),
  Product(
    id: 14,
    type: 'Sports',
    image: "assets/images/grey-shorts.png", 
    title: "Grey sports shorts", 
    description: dummyText, 
    price: 30,
    sellCount: 35, 
    color: Color.fromARGB(157, 164, 142, 162)
  ),
  Product(
    id: 15,
    type: 'Sports',
    image: "assets/images/orange-runningshoe.png", 
    title: "Orange running shoes", 
    description: dummyText, 
    price: 150,
    sellCount: 35, 
    color: Color.fromARGB(157, 220, 159, 16)
  ),
  Product(
    id: 16,
    type: 'Sports',
    image: "assets/images/red-runningshoe.png", 
    title: "Red running shoes", 
    description: dummyText, 
    price: 150,
    sellCount: 35, 
    color: Color.fromARGB(157, 197, 10, 32)
  ),
  Product(
    id: 17,
    type: 'Designer',
    image: "assets/images/brown-polo.png", 
    title: "Brown polo", 
    description: dummyText, 
    price: 170,
    sellCount: 10, 
    color: Color.fromARGB(157, 197, 104, 10)
  ),
  Product(
    id: 18,
    type: 'Designer',
    image: "assets/images/grey-polo.png", 
    title: "Grey polo", 
    description: dummyText, 
    price: 170,
    sellCount: 10, 
    color: Color.fromARGB(157, 152, 144, 135)
  ),
  Product(
    id: 19,
    type: 'Designer',
    image: "assets/images/black-suit.png", 
    title: "Black suit", 
    description: dummyText, 
    price: 550,
    sellCount: 10, 
    color: Color.fromARGB(157, 24, 13, 2)
  ),
  Product(
    id: 20,
    type: 'Designer',
    image: "assets/images/red-sweatshirt.png", 
    title: "Red sweatshirt", 
    description: dummyText, 
    price: 220,
    sellCount: 20, 
    color: Color.fromARGB(157, 197, 32, 10)
  ),
];