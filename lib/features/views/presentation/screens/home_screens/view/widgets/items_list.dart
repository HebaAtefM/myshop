import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';

// class ItemsList extends StatelessWidget {
//   ItemsList({Key? key}) : super(key: key);
//   List<String> images = [
//     ImageAssets.breakfast,
//     ImageAssets.dinner,
//     ImageAssets.dinner,
//     ImageAssets.drink,
//     ImageAssets.salad,
//     ImageAssets.breakfast,
//     ImageAssets.drink,
//     ImageAssets.dinner,
//     ImageAssets.drink,
//     ImageAssets.salad
//   ];
//   List<String> title = [
//     "breakfast",
//     "luanch",
//     "dinner",
//     "drink",
//     "salad",
//     "breakfast is very important",
//     "luanch",
//     "dinner",
//     "drink",
//     "salad"
//   ];
//   List<String> subtitle = [
//     "breakfast is very important",
//     "luanch",
//     "dinner",
//     "drink",
//     "salad",
//     "breakfast is very important",
//     "luanch",
//     "dinner",
//     "drink",
//     "salad"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
//           child: Container(
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 15.0),
//                     child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: ColorManager.white),
//                         width: Dimensions().width(context),
//                         height: Dimensions().height(context) / 4,
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pushNamed(context, Routes.category);
//                           },
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 width: Dimensions().width(context),
//                                 height: Dimensions().height(context) / 6,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                         images[index],
//                                       ),
//                                       fit: BoxFit.cover),
//
//                                   //shape: BoxShape.rectangle,
//
//                                   borderRadius: BorderRadius.circular(12),
//
//                                   color: ColorManager.white,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 title[index],
//                                 style: getBoldStyle(color: ColorManager.black),
//                               ),
//                               SizedBox(
//                                 height: 3,
//                               ),
//                               Text(
//                                 subtitle[index],
//                                 style:
//                                     getRegularStyle(color: ColorManager.grey),
//                               )
//                             ],
//                           ),
//                         )),
//                   );
//                 }),
//           ),
//         ),
//       ),
//     );
//   }
// }
