import 'package:flutter/material.dart';
import '../settings/settings_screen.dart';
import './widgets/body.dart';

class CartScreen extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(),
    );
  }

  
}