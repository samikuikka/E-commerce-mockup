import 'package:flutter/material.dart';
import './payment_form.dart';

class PaymentOptions extends StatefulWidget {
  @override
  PaymentState createState() => PaymentState();
}

class PaymentState extends State<PaymentOptions> {
  var _card = true;
  var _cash = false;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          onPressed: () {},
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
