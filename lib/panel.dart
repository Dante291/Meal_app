import 'package:flutter/material.dart';
import 'package:meal_app/meal.dart';

class panel_widget extends StatefulWidget {
  final Meal selectedmeal;
  final ScrollController controller;

  const panel_widget({
    required this.selectedmeal,
    required this.controller,
  });

  @override
  panel_widgetState createState() =>
      // ignore: no_logic_in_create_state
      panel_widgetState(controller: controller, selectedmeal: selectedmeal);
}

class panel_widgetState extends State<panel_widget> {
  bool allowListScrolling = true;
  final Meal selectedmeal;
  final ScrollController controller;

  panel_widgetState({
    required this.selectedmeal,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
        onNotification: (notification) {
          // Check if the sliding panel is fully expanded or not
          if (notification.metrics.pixels ==
              notification.metrics.maxScrollExtent) {
            // Panel is fully expanded, allow the inner ListView to scroll
            allowListScrolling = true;
          } else {
            // Panel is not fully expanded, block the inner ListView scrolling
            allowListScrolling = false;
          }
          return false;
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ListView(
            controller: widget.controller,
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'INGRIDIENTS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    child: ListView.builder(
                      physics: (allowListScrolling == false)
                          ? const AlwaysScrollableScrollPhysics()
                          : const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: selectedmeal.ingredients.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              height: 25,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      children: [
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Icon(
                                          Icons.circle,
                                          size: 10,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      selectedmeal.ingredients[index],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ]),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Text(
                      'DIRETIONS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 290,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      itemCount: selectedmeal.steps.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Column(
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.85),
                                  child: Text(
                                    selectedmeal.steps[index],
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
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
        ));
  }
}
