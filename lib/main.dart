import 'package:flutter/material.dart';
import 'package:meal_app/category_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: Colors.indigo, secondary: Colors.blueGrey),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(color: Colors.white),
              bodyMedium: const TextStyle(color: Colors.white),
              titleLarge: const TextStyle(
                  // color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'RobotoCondensed'))),
      title: 'Swadisht Khazana',
      home: Category_screen(),
    );
  }
}
