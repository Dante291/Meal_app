import 'package:flutter/material.dart';
import 'package:meal_app/category_screen.dart';
import 'package:meal_app/fav_meal_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Swadisht Khazana'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.format_list_bulleted),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorites',
            )
          ]),
        ),
        body: const TabBarView(children: [Category_screen(), fav_meal()]),
      ),
    );
  }
}
