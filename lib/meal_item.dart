import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';
import 'package:meal_app/meal_detail_screen.dart';

class mealIteam extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Affordability affordability;
  final int duration;
  final Complexity complexity;

  const mealIteam({
    required this.id,
    required this.affordability,
    required this.complexity,
    required this.duration,
    required this.imageUrl,
    required this.title,
  });

  String get complexitytext {
    if (complexity == Complexity.Simple) {
      return 'Simple';
    }
    if (complexity == Complexity.Challenging) {
      return 'Challenging';
    }
    if (complexity == Complexity.Hard) {
      return 'Hard';
    }
    return '';
  }

  String get affordibilitytext {
    if (affordability == Affordability.Affordable) {
      return 'Affordable';
    }
    if (affordability == Affordability.Luxurious) {
      return 'Expensive';
    }
    if (affordability == Affordability.Pricey) {
      return 'Pricey';
    }
    return '';
  }

  void selectmaterial(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealDetailScreen.routename,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectmaterial(context),
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
                      child: Flex(direction: Axis.horizontal, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black54,
                          ),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.9,
                          ),
                          // width: 350,
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
                        ),
                      ]))
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.schedule,
                              size: 22,
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Text(
                              '$duration mins',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.work,
                              size: 22,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              complexitytext,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.attach_money,
                              size: 22,
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            Text(
                              affordibilitytext,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ]))
            ],
          ),
        ));
  }
}
