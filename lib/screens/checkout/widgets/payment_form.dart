import 'package:flutter/material.dart';

class PaymentForm extends StatefulWidget {
  final bool card;

  const PaymentForm({super.key, required this.card});

  @override 
  FormState createState() => FormState();
}

class FormState extends State<PaymentForm>{
  final _cardNumberController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!widget.card) {
      return Container();
    }

    return Expanded(child: Container(color: Color.fromARGB(80, 90, 129, 160), child: Column(
      children: [
        Expanded(
          child: TextField(
            controller: _cardNumberController,
            decoration: const InputDecoration(
              hintText: '0000 0000 0000 0000',
              border: OutlineInputBorder()
            ),
          ),
        ),
        Expanded(
          child: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Ex. John',
              border: OutlineInputBorder()
            ),
          ),
        )

      ],
    )));
  }

}