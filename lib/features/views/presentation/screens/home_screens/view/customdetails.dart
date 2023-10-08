
import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

// class CustomDetails extends StatelessWidget {
//    CustomDetails({Key? key}) : super(key: key);
// List<String> info=[
//   "Kcal",
//   "fat",
//   "saturates",
//   "carbs",
//   "sugar",
//   "fibre",
//   "protein",
//   "salt"
// ];
//    List<String> infonumber=[
//      "676",
//      "39g",
//      "18g",
//      "39g",
//      "8g",
//      "9g",
//      "38g",
//      ".6g"
//    ];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:   CustomScrollView(
//           shrinkWrap: true,
//
//
//           slivers:<Widget> [
//           SliverAnimatedList(
// initialItemCount: 1,
//         itemBuilder: (BuildContext context, int index, Animation<double> animation) {
//           return
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 10.0, vertical: 5),
//               child: Container(
//
//                 width: Dimensions().width(context),
//
//                 height: Dimensions().height(context) * .5,
//
//
//                 child:
//                 Stack(
//                   children: [
//                     Container(
//                       child: Image.asset(ImageAssets.low_calory6,
//                         height: Dimensions().height(context),
//                         width: Dimensions().width(context),
//                         fit: BoxFit.cover,
//
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: IconButton(onPressed: () {
//                         Navigator.pop(context);
//                       }, icon: Icon(Icons.arrow_back,
//                         color: ColorManager.white,)),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: SizedBox(
//                         height: Dimensions().height(context) / 18
//                         , child: Text("Dinner healthy food ",
//
//                         style: getBoldStyle(color: ColorManager.white),),
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//
//
//               ),
//
//             );
//         }
//           ),
//             SliverAnimatedList(initialItemCount: 1,
//                 itemBuilder: (BuildContext context, int index, Animation<double> animation) {
//                   return Column(
//                     children: [
//                       Container(
//
//                         width: Dimensions().width(context),
//
//                         height: Dimensions().height(context) * .2,
//
//
//                         child:
//
//                         ListTile(
//                           title: Text("About",
//                             style: getBoldStyle(color: ColorManager.black),),
//                           subtitle: Text("this is type of healthy food",
//                             style: getMediumStyle(color: ColorManager.grey),),
//                         ),
//
//                       ),
//
//                       Divider(color: ColorManager.darkGrey, height: 15,),
//
//
//                       Container(
//
//                         width: Dimensions().width(context),
//
//                         height: Dimensions().height(context) * .3,
//
//
//                         child:
//
//                         ListTile(
//                           title: Text("Nutrition info",
//                             style: getBoldStyle(color: ColorManager.black),),
//                           subtitle: ListView.builder(
//                             itemCount: 8
//
//                             , itemBuilder: (context, index) {
//                             return Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(child: Text(info[index])),
//                                 Container(child: Text(infonumber[index])),
//
//                               ],
//                             );
//                           },
//                           ),
//
//
//                         ),
//
//
//                       ),
//                       Container(
//                         width: Dimensions().width(context),
//
//                         height: Dimensions().height(context) * .1,
//                         child: CustomButton(
//                           text: "Add To Shopping List", function: () {
//                           Navigator.pushNamed(context, Routes.shoppinglist);
//                         },),
//                       ),
//
//
//
//                     ],
//                   );
//                 }
//             )
//
//             // Container(
//                 //   width: Dimensions().width(context),
//                 //
//                 //   height: Dimensions().height(context)*.1,
//                 //   child: CustomButton(text: "Add To Shopping List",function: ()
//                 //   {Navigator.pushNamed(context, Routes.shoppinglist);},),
//                 // )
//                 //
//
//
//
//
//
//
//
//
//
//
//
//
//
//               ],
//             ),
//           );
//
//
//
//
//
//
//
//
//
//
//
//   }
// }
