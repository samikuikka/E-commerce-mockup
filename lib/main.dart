import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './models/product.dart';

import './screens/home/home_screen.dart';
import './screens/category/category_screen.dart';
import './screens/product/product_screen.dart';
import './screens/settings/settings_screen.dart';
import './screens/cart/cart_screen.dart';
import './screens/checkout/checkout_screen.dart';
import './screens/complete/checkout_complete_screen.dart';


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
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) {
          return CartScreen();
        }
      ),
      GoRoute(
        path: '/checkout/complete',
        builder: (context, state)  {
          if(state.extra == null) {
            return Text('do not reload this screen ;(');
          }
          List<Product> products = state.extra! as List<Product>;
          return CheckoutCompleteScreen(products: products);
        }
      ),
      GoRoute(
        path: '/checkout',
        builder: (context, state) {
          return CheckoutScreen();
        }
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

