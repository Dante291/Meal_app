import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

// ignore: use_key_in_widget_constructors
class MealDetailScreen extends StatelessWidget {
  static const routename = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedimage =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(255, 218, 255, 192),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Image.network(
                selectedimage.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
