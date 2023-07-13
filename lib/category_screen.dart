import 'package:flutter/material.dart';
import 'package:meal_app/156%20dummy_data.dart';
import 'package:meal_app/category_item.dart';

class Category_screen extends StatelessWidget {
  const Category_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES
            .map((catDATA) => Category_item(catDATA.color, catDATA.title))
            .toList());
  }
}
