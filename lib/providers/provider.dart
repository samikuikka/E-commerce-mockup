import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';

final apiProvider = Provider<ProductService>((ref) => ProductService());

final productProvider = FutureProvider<List<Product>> ((ref) async {
  return ref.read(apiProvider).fetchProducts();
});

final shoppingProvider = StateProvider<List<int>> ((ref) => []);

class NameData extends StateNotifier<String> {
  late SharedPreferences prefs;

  NameData(): super('');

  initName() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('name')) {
      state = prefs.getString('name')!;
    }
  }

  changeName(String name) async {
    state = name;
    prefs.setString('name', state);
  }
}


final nameProvider = StateNotifierProvider<NameData, String> ((ref) {
  NameData namedata = NameData();
  namedata.initName();
  return namedata;
});

class AddressData extends StateNotifier<String> {
  late SharedPreferences prefs;

  AddressData(): super('');

  initAddress() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('address')) {
      state = prefs.getString('address')!;
    }
  }

  changeAddress(String name) async {
    state = name;
    prefs.setString('address', state);
  } 
}

final addressProvider = StateNotifierProvider<AddressData, String> ((ref) {
  AddressData addressdata = AddressData();
  addressdata.initAddress();
  return addressdata;
});