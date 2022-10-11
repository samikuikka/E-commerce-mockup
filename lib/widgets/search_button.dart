import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/provider.dart';
import '../models/product.dart';
import 'package:go_router/go_router.dart';

class SearchIcon extends ConsumerStatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends ConsumerState<SearchIcon> {
  bool open = false;
  List<String> categories = ['Clothing', 'Shoes', 'Sports', 'Accessories', 'Designer'];

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productProvider);
    double width = MediaQuery.of(context).size.width;

    return products.when(data: ((data) {
      List<String> searchItems = [];
      List<String> product_names = data.map( (e) => e.title).toList();
      searchItems.addAll(product_names);
      searchItems.addAll(categories);
      return Row(
        children: [
          !open
              ? Container()
              : SizedBox(
                  width: 150 < width*0.3 ? 150 : width*0.3,
                  child: Autocomplete<String>(
                    fieldViewBuilder: (context, textEditingController,
                        focusNode, onFieldSubmitted) {
                      return TextField(
                        decoration: const InputDecoration(
                            hintText: 'search...',
                            border: OutlineInputBorder()),
                        controller: textEditingController,
                        focusNode: focusNode,
                        onSubmitted: (value) {},
                      );
                    },
                    optionsBuilder: (textEditingValue) {
                      if (textEditingValue.text == '') {
                        return Iterable.empty();
                      }

                      return searchItems.where((option) {
                        return option.toLowerCase()
                            .contains(textEditingValue.text.toLowerCase());
                      });
                    },
                    onSelected: (option) {
                      if(categories.contains(option)) {
                        context.push('/category/$option');
                      } else {
                        Product found = data.firstWhere((element) => element.title == option);
                        context.push('/product/${found.id}');
                      }
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
                  icon: const Icon(Icons.search, color: Colors.black,),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      open = false;
                    });
                  },
                  icon: const Icon(Icons.cancel, color: Colors.black,),
                ),
        ],
      );
    }),
    error: (error, stackTrace) => Text(error.toString()),
    loading: () => const Text('loading..')
    );
  }
}
