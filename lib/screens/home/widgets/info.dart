import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.2,
        ),
        child: Container(
          color: Colors.orangeAccent,
          child: Center(
              child: Text(
            """Welcome to our shop. Navigating to our item categories happned by pressing category name and you can go to product screen by pressing product name.
              You can also search categories from the search bar. Happy shopping!
            """,
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
