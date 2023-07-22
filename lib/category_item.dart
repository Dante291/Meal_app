import 'package:flutter/material.dart';
import 'package:meal_app/category_meals_screen.dart';

// ignore: camel_case_types
class Category_item extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const Category_item(this.id, this.color, this.title);

  void screenCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routename,
        arguments: {'id': id, 'title': title, 'color': color});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => screenCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.8),
            color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            // BoxShadow(
            //   color: Color.fromARGB(255, 205, 204, 204),
            //   spreadRadius: 3,
            //   blurRadius: 5,
            // )
          ],
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
