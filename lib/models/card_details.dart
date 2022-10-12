import 'package:flutter/material.dart';

class CardDetails {

  final String number, name, date, cvv;

  CardDetails({
    required this.number,
    required this.name,
    required this.date,
    required this.cvv
  });

  factory CardDetails.fromJson(Map<dynamic, dynamic> json) {
    return CardDetails(
      name: json['name'],
      number: json['number'],
      date: json['date'],
      cvv: json['cvv']
    );
  }

  Map<String, dynamic> toJson() => {
    'number': number,
    'name': name,
    'date': date,
    'cvv': cvv
  };

}