


import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';

class PageViewContent extends StatelessWidget {
   PageViewContent( {Key? key, required this.image, required this.text}) : super(key: key);
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return           Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(image,
          width: Dimensions().width(context),
          height: Dimensions().height(context),fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,bottom: 15),
          child: Text(text,style: getBoldStyle(color: ColorManager.white),),
        )
      ],
    );
  }
}
