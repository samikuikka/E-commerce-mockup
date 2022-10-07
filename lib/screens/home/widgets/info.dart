import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      color: Color.fromARGB(189, 213, 76, 8),
      child: Center(
        child: Text(
          dummyText,
          style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
      ),
    ); */
    return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.2,
        ),
        child: Container(
          color: Colors.orangeAccent,
          child: Center(
              child: Text(
            dummyText,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          )),
        )
      );
  }

  final String dummyText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis sollicitudin lacus tempor ullamcorper. Nunc dolor tellus, pulvinar non iaculis at, posuere et leo. ";
}
