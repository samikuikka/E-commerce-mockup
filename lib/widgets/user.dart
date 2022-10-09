import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserIcon extends StatelessWidget {
  
  const UserIcon({super.key});

  @override 
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.account_box,
        color: Colors.black,
      ),
      onPressed: () {
        context.push('/settings');
      },
    );
  }
}