import 'package:flutter/material.dart';
import './payment_options.dart';

class Body extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xffc7c7c7),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Payment Options',
                  style: Theme.of(context).textTheme.headline4,
                ),

                SizedBox(height: height*0.05,),

                PaymentOptions(),

              ],
            ),
          ),
        )
        ,
      ),
    );
  }
}