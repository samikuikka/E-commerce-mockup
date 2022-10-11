import 'package:flutter/material.dart';

class SearchIcon extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<SearchIcon> {
  bool open = false;
  List<String> test = ['asokdhas', 'sadoopk', '32849'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        !open
            ? Container()
            : SizedBox(
                width: 150,
                child: Autocomplete<String>(
                  fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) {
                    return TextField(
                      decoration: const InputDecoration(
                          hintText: 'search...', border: OutlineInputBorder()),
                      controller: textEditingController,
                      focusNode: focusNode,
                      onSubmitted: (value) {},
                    );
                  },
                  optionsBuilder: (textEditingValue) {
                    if (textEditingValue.text == '') {
                      return Iterable.empty();
                    }

                    return test.where((option) {
                      return option
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                ),
              ),
        !open
            ? IconButton(
                onPressed: () {
                  setState(() {
                    open = true;
                  });
                },
                icon: const Icon(Icons.search),
              )
            : IconButton(
                onPressed: () {
                  setState(() {
                    open = false;
                  });
                },
                icon: const Icon(Icons.cancel),
              ),
      ],
    );
  }
}
