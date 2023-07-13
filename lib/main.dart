import 'package:flutter/material.dart';
import 'package:meal_app/category_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Swadisht Khazana',
      home: Category_screen(),
    );
  }
}
