import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './screens/home/home_screen.dart';
import './screens/category/category_screen.dart';
import './screens/product/product_screen.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/category/:id',
        builder: (context, state) {
          return Category(category: state.params['id']!);
        }
      ),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          return ProductScreen(product_id: int.parse(state.params['id']!));
        }   
      )
    ]
  );
  runApp(ProviderScope(child: MaterialApp.router(routerConfig: router)));
}

