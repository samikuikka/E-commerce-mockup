import 'dart:convert';

import 'package:dad_project_2/providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../models/card_details.dart';

class Body extends ConsumerStatefulWidget {
  @override
  ConsumerState<Body> createState() => BodyState();
}

class BodyState extends ConsumerState<Body> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _cardNameController = TextEditingController();
  final _dateController = TextEditingController();
  final _cvvController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }


  _save() async {
    final prefs = await SharedPreferences.getInstance();
    ref.watch(nameProvider.notifier).changeName(_nameController.text);
    ref.watch(addressProvider.notifier).changeAddress(_addressController.text);

    // Card
    CardDetails card = CardDetails(
      number: _cardNumberController.text,
      name: _cardNameController.text, 
      date: _dateController.text, 
      cvv: _cvvController.text
    );
    String encoded = jsonEncode(card);
    prefs.setString('card', encoded);
    ref.watch(cardProvider.notifier).changeCard(card);

    //empty texts
    _nameController.clear();
    _addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String name = ref.watch(nameProvider);
    String address = ref.watch(addressProvider);
    CardDetails currentCard = ref.watch(cardProvider);
    TextStyle? headline6 = Theme.of(context).textTheme.headline6;

    return Container(
      color: const Color(0xffc7c7c7),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Text(
                  'Account',
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                //Name
                Column(
                  children: [
                    Text('Name: $name',
                      style: headline6,
                    ),
                    SizedBox(
                      width: 600,
                      child: TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                            hintText: 'name', border: OutlineInputBorder())
                      )
                    )
                  ],
                ),

                const SizedBox(height: 5),

                //Address
                Column(
                  children: [
                    Text('Address: $address',
                    style: headline6,
                  ),
                  SizedBox(
                    width: 600,
                    child: TextField(
                      controller: _addressController,
                      decoration: const InputDecoration(
                          hintText: 'address', border: OutlineInputBorder())
                    )
                  )
                  ],
                ),

                //Card number
                Column(
                    children: [
                      Text(
                        'Card number',
                        style: headline6,
                      ),
                      SizedBox(
                        width: 600,
                        child: TextField(
                        controller: _cardNumberController,
                        decoration: const InputDecoration(
                            hintText: '0000 0000 0000 0000',
                            border: OutlineInputBorder()),
                      ),
                      )
                    ],
                ),

                const SizedBox(height: 5),

                //Expire date
                Column(
                  children: [
                    Text(
                          'Name on card',
                          style: headline6,
                        ),
                      SizedBox(
                        width: 600,
                        child: TextField(
                          controller: _cardNameController,
                          decoration: const InputDecoration(
                              hintText: 'Ex. John',
                              border: OutlineInputBorder()),
                        ),
                      )
                  ],
                ),

                const SizedBox(height: 5),

                //Date
                Column(
                  children: [
                    Text(
                      'Expiry date',
                      style: headline6,
                    ),
                    SizedBox(
                      width: 600,
                      child: TextField(
                      controller: _dateController,
                      decoration: const InputDecoration(
                          hintText: 'MM/YY', border: OutlineInputBorder()),
                    ),
                    )
                  ],
                ),

                const SizedBox(height: 5),

                //CVV
                Column(
                  children: [
                    Text(
                      'CVV code',
                      style: headline6,
                    ),
                    SizedBox(
                      width: 600,
                      child: TextField(
                      controller: _cvvController,
                      decoration: const InputDecoration(
                          hintText: '', border: OutlineInputBorder()),
                    ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                
                //Submit button
                Column(
                  children: [
                    SizedBox(
                      width: 600,
                      child: ElevatedButton(
                        onPressed: _save,
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(size.height * 0.075)
                        ),
                        child:  Text('Save', style: TextStyle(fontSize: (20/720) * size.height),)
                      )
                    )
                  ],
                )
                
                
              ],
            ),
          ),
        ),
      ),
    );

  }
}
