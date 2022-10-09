import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './screens/home/home_screen.dart';
import './screens/category/category_screen.dart';
import './screens/product/product_screen.dart';
import './screens/settings/settings_screen.dart';

main() async {
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
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) {
          return const SettingsScreen();
        },
      )
    ]
  );

  runApp(ProviderScope(child: MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: router,
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff212121),
          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2)
          )
        )
      )
    ),
  )));
}

