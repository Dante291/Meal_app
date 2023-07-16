import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

class mealIteam extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Affordability affordability;
  final int duration;
  final Complexity complexity;

  mealIteam({
    required this.affordability,
    required this.complexity,
    required this.duration,
    required this.imageUrl,
    required this.title,
  });

  void selectmaterial() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: selectmaterial,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black54,
                        ),
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 15),
                        child: Text(
                          title,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
