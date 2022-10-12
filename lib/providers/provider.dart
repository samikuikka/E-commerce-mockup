import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/product.dart';
import '../models/card_details.dart';
import 'dart:convert';

final apiProvider = Provider<ProductService>((ref) => ProductService());

final productProvider = FutureProvider<List<Product>> ((ref) async {
  return ref.read(apiProvider).fetchProducts();
});

final shoppingProvider = StateProvider<List<Product>> ((ref) => []);

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

class CardData extends StateNotifier<CardDetails> {
  late SharedPreferences prefs;

  CardData(): super(CardDetails(number: '', name: '', date: '', cvv: ''));

  initCard() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('card')) {
      final decoded = json.decode(prefs.getString('card')!);
      CardDetails newCard = CardDetails.fromJson(decoded);
      state = newCard;
    }
  }

  changeCard(CardDetails card) async {
    state = card;
  }
  
}

final cardProvider = StateNotifierProvider<CardData, CardDetails> ((ref) {
  CardData carddata = CardData();
  carddata.initCard();
  return carddata;
});