import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/meal_item.dart';

// ignore: use_key_in_widget_constructors
class CategoryMealScreen extends StatelessWidget {
  static const routename = '/category_meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final categoryTitle = routeArgs['title'].toString();
    final categoryID = routeArgs['id'].toString();
    final categoryColor = routeArgs['color'] as Color;
    final categoryMeal = DUMMY_MEALS.where((pew) {
      return pew.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return mealIteam(
              color: categoryColor,
              id: categoryMeal[index].id,
              affordability: categoryMeal[index].affordability,
              complexity: categoryMeal[index].complexity,
              duration: categoryMeal[index].duration,
              imageUrl: categoryMeal[index].imageUrl,
              title: categoryMeal[index].title);
        },
        physics: const BouncingScrollPhysics()
            .applyTo(const AlwaysScrollableScrollPhysics()),
        itemCount: categoryMeal.length,
      ),
    );
  }
}
