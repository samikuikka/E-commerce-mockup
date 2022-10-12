import 'package:flutter/material.dart';
import '../settings/settings_screen.dart';
import './widgets/body.dart';

class CheckoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Body(),
    );
  }
}