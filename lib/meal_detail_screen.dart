import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MealDetailScreen extends StatelessWidget {
  static const routename = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Center(child: Text('The Meal - $mealId')),
    );
  }
}
