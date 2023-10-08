


import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';

// class CaloriesHealthyList extends StatelessWidget {
//    CaloriesHealthyList({Key? key, required this.text,this.ontap}) : super(key: key);
//   final String text;
//
//   void Function()? ontap;
//   List<String> calory_list = [
//     ImageAssets.low_calory1,
//     ImageAssets.low_calory2,
//     ImageAssets.low_calory3,
//     ImageAssets.low_calory4,
//     ImageAssets.low_calory5,
//     ImageAssets.low_calory6,
//     ImageAssets.low_calory7,
//     ImageAssets.low_calory8,
//
//   ];
//   List<String> title = ["breakfast", "luanch", "dinner", "drink",
//     "salad", "luanch", "dinner", "drink", "salad"];
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       // SizedBox(
//       // height: Dimensions().height(context)/4,
//
//       Column(
//         children: [
//           Align(
//               alignment: Alignment.centerLeft,
//               child: Text(text,style: getBoldStyle(color: ColorManager.black),)),
//           SizedBox(
//             height: Dimensions().height(context)/4,
//
//             child: ListView.builder(
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//
//                     // GestureDetector(
//
//                     GestureDetector(
//                       onTap:ontap ,
//                       child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 10),
//                           child: Container(
//                             width: Dimensions().width(context) / 6,
//                             height: Dimensions().height(context) / 8,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     calory_list[index],
//                                   ),
//                                   fit: BoxFit.cover),
//
//
//                               borderRadius: BorderRadius.circular(12),
//
//                               color: ColorManager.white,
//                             ),
//                           )),
//
//                     ),
//                     Text(
//                       title[index],
//                       style: getRegularStyle(color: ColorManager.black),
//                     ),
//                   ],
//                 );
//               },
//               itemCount: calory_list.length,
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         ],
//       );
//   }
//
// }
