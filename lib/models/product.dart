import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../util/asset_loader.dart';

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

  factory Product.fromJson(Map<dynamic, dynamic> json) {
    return Product(
      id: int.parse(json['id']),
      type: json['type'],
      image: json['image'],
      title: json['title'],
      description: dummyText,
      price: int.parse(json['price']),
      sellCount: int.parse(json['sellCount']),
      color: Color(int.parse(json['color']))
    );
  }
}

const String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis sollicitudin lacus tempor ullamcorper. Nunc dolor tellus, pulvinar non iaculis at, posuere et leo. Maecenas pellentesque risus libero, a facilisis libero dictum a. Nam leo orci, maximus eget sodales in, auctor ac massa.";

class ProductService {

  Future<List<Product>> fetchProducts() async {
    final data = await loadData();
    final List decoded = jsonDecode(data)['shop']['data'];
    return decoded.map((e) {
      return Product.fromJson(e);
    }).toList();

  }
}
