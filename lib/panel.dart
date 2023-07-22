import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

class panel_widget extends StatelessWidget {
  final Meal selectedmeal;
  final ScrollController controller;

  const panel_widget(
      {super.key, required this.selectedmeal, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: ListView(
        controller: controller,
        padding: EdgeInsets.zero,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(color: Colors.grey[400]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'INGRIDIENTS',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: selectedmeal.ingredients.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          child: Row(children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              selectedmeal.ingredients[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ]),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text(
                  'DIRETIONS',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  itemCount: selectedmeal.steps.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.85),
                              child: Text(
                                selectedmeal.steps[index],
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            )
                          ]),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
