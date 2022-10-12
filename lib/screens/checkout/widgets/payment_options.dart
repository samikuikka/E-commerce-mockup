import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './payment_form.dart';
import '../../../providers/provider.dart';
import '../../../models/product.dart';
import 'package:go_router/go_router.dart';

class PaymentOptions extends ConsumerStatefulWidget {
  @override
  PaymentState createState() => PaymentState();
}

class PaymentState extends ConsumerState<PaymentOptions> {
  var _card = true;
  var _cash = false;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Product> products = ref.watch(shoppingProvider);

    return Expanded(
      flex: 1,
        child: Column(
      children: [
        Expanded(
          flex: 0,
          child: Container(
           width: width,
           child: Wrap(  
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 40,
            children: [

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: _card,
                      onChanged: (value) {
                        setState(() {
                          _card = true;
                          _cash = false;
                        });
                      }),

                      const Flexible(child: Text(
                        "Credit/Debit/ATM Card",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                    
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: _cash,
                      onChanged: (value) {
                        setState(() {
                          _card = false;
                          _cash = true;
                        });
                      }),

                      const Flexible(child: Text(
                        "Cash On Delivery",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))                 
                ],
              )
            ],
          ),
        )),

        PaymentForm(card: _card),

        ElevatedButton(
          onPressed: () {
            List<Product> newState = [...products];
            ref.watch(shoppingProvider.notifier).update((state) => []);
            context.go('/checkout/complete', extra: newState);
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(width*0.4, 0),
            padding: EdgeInsets.symmetric(vertical: 20)
          ),
          child: Text('COMPLETE ORDER',
            style: TextStyle(fontSize: (30/720) * height),
          ),
        )
      ],
    ));
  }
}
