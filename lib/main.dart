import 'package:flutter/material.dart';
import 'package:test_project/screens/favorite_screen.dart';

void main() {
  runApp(const MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FavoriteScreen(),
    );
  }
}
