import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routename = '/category_meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Column(
        children: [
          Text('This is the second screen'),
        ],
      ),
    );
  }
}
