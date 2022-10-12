import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/provider.dart';

class PaymentForm extends ConsumerStatefulWidget {
  final bool card;

  const PaymentForm({super.key, required this.card});

  @override
  FormState createState() => FormState();
}

class FormState extends ConsumerState<PaymentForm> {
  final _cardNumberController = TextEditingController();
  final _nameController = TextEditingController();
  final _dateController = TextEditingController();
  final _cvvController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final TextStyle? _style = Theme.of(context).textTheme.headline6;

    //Initial values to form
    final carddata = ref.watch(cardProvider);
    _cardNumberController.text = carddata.number;
    _nameController.text = carddata.name;
    _dateController.text = carddata.date;
    _cvvController.text = carddata.cvv;

    if (!widget.card) {
      return Container();
    }


    if (width < 600) {
      return Expanded(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Card number',
                style: _style,
              ),
              TextField(
                controller: _cardNumberController,
                decoration: const InputDecoration(
                    hintText: '0000 0000 0000 0000',
                    border: OutlineInputBorder()),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name on card',
                style: _style,
              ),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                    hintText: 'Ex. John', border: OutlineInputBorder()),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Expiry date',
                style: _style,
              ),
              TextField(
                controller: _dateController,
                decoration: const InputDecoration(
                    hintText: 'MM/YY', border: OutlineInputBorder()),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CVV code',
                style: _style,
              ),
              TextField(
                controller: _cvvController,
                decoration: const InputDecoration(
                    hintText: '', border: OutlineInputBorder()),
              ),
            ],
          )
        ],
      ));
    }

    return Expanded(
        child: Column(
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        SizedBox(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card number',
                  style: _style,
                ),
                TextField(
                  controller: _cardNumberController,
                  decoration: const InputDecoration(
                      hintText: '0000 0000 0000 0000',
                      border: OutlineInputBorder()),
                ),
              ],
            )),
        SizedBox(
          height: height * 0.05,
        ),
        SizedBox(
            width: 600,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name on card',
                          style: _style,
                        ),
                        TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                              hintText: 'Ex. John',
                              border: OutlineInputBorder()),
                        )
                      ],
                    )),
                const SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry date',
                      style: _style,
                    ),
                    TextField(
                      controller: _dateController,
                      decoration: const InputDecoration(
                          hintText: 'MM/YY', border: OutlineInputBorder()),
                    ),
                  ],
                )),
                const SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV code',
                      style: _style,
                    ),
                    TextField(
                      controller: _cvvController,
                      decoration: const InputDecoration(
                          hintText: '', border: OutlineInputBorder()),
                    ),
                  ],
                ))
              ],
            ))
      ],
    ));
  }
}
