import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

// ignore: use_key_in_widget_constructors
class MealDetailScreen extends StatelessWidget {
  static const routename = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final mealId = routeArgs['id'] as String;
    final bacolor = routeArgs['color'] as Color;
    final mealTitle = routeArgs['title'] as String;
    final selectedimage =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: bacolor,
        child: Stack(
          children: [
            Positioned(
                top: 60,
                left: 7,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    selectedimage.imageUrl,
                  ),
                  radius: 200,
                )),
          ],
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
