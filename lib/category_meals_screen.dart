import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Text(
            'This is the second screen',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
