import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// ignore: use_key_in_widget_constructors
class MealDetailScreen extends StatefulWidget {
  static const routename = '/meal-detail';

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final mealId = routeArgs['id'] as String;
    final bacolor = routeArgs['color'] as Color;
    final mealTitle = routeArgs['title'] as String;
    final selectedimage =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.55,
        minHeight: MediaQuery.of(context).size.height * 0.38,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        panelBuilder: (controller) =>
            panel_widget(selectedmeal: selectedimage, controller: controller),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: bacolor,
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.arrow_back_rounded,
                    size: 36,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      mealTitle,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.bookmark_add_rounded,
                    size: 36,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  selectedimage.imageUrl,
                ),
                radius: 210,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//           Container(
//             color: Colors.white,
//             child: Column(children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30)),
//                 child: Image.network(
//                   selectedimage.imageUrl,
//                   fit: BoxFit.cover,
//                   height: 320,
//                   width: double.infinity,
//                 ),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   padding: const EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                     color: bacolor,
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Color.fromARGB(255, 205, 204, 204),
//                         spreadRadius: 3,
//                         blurRadius: 5,
//                       )
//                     ],
//                   ),
//                   child: Text(mealTitle,
//                       style: const TextStyle(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                           fontSize: 24,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: 'RobotoCondensed')),
//                 ),
//               ),
//             ])),
//      ] ),
//     );
//   }
// }
