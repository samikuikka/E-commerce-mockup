import 'package:dad_project_2/providers/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Body extends ConsumerStatefulWidget {
  @override
  ConsumerState<Body> createState() => BodyState();
}

class BodyState extends ConsumerState<Body> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }


  _save() async {
    ref.watch(nameProvider.notifier).changeName(_nameController.text);
    ref.watch(addressProvider.notifier).changeAddress(_addressController.text);
    _nameController.clear();
    _addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String name = ref.watch(nameProvider);
    String address = ref.watch(addressProvider);

    return Center(
        child: Material(
      elevation: 20,
      child: Container(
          height: size.height * 0.6,
          width: size.width * 0.5,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: size.height * 0.05),
            child: Column(
              children: [
                const Spacer(flex: 1),
                TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        hintText: 'name', border: OutlineInputBorder())),
                Text('current name: $name',
                style: TextStyle(
                    fontSize: (17/720) * size.height
                  ),
                ),
                const Spacer(flex: 2),
                TextField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                        hintText: 'address', border: OutlineInputBorder())),
                Text('current address: $address',
                  style: TextStyle(
                    fontSize: (17/720) * size.height
                  ),
                ),
                const Spacer(flex: 3,),
                ElevatedButton(
                  onPressed: _save,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(size.height * 0.075)
                  ),
                  child:  Text('Save', style: TextStyle(fontSize: (20/720) * size.height),)
                )
              ],
            ),
          )),
    ));

  }
}
