import 'package:flutter/services.dart' show rootBundle;

Future<String> loadData() async {
  return await rootBundle.loadString('assets/data.json');
}
