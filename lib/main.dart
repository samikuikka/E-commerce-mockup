import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './screens/home/home_screen.dart';

void main() {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen())
    ]
  );
  runApp(ProviderScope(child: MaterialApp.router(routerConfig: router)));
}

