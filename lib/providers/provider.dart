import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

final apiProvider = Provider<ProductService>((ref) => ProductService());

final productProvider = FutureProvider<List<Product>> ((ref) async {
  return ref.read(apiProvider).fetchProducts();
});