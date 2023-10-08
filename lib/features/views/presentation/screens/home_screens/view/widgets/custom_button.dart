import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';

import 'package:rozy_restraunt/core/resources/styles_manager.dart';

class CustomButton extends StatelessWidget {
   CustomButton( {Key? key, required this.text,this.function}) : super(key: key);
final String text;
   void Function()? function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:function ,
      child: Container(
          width: Dimensions().width(context)*.7,
          

          height: Dimensions().height(context)*.08,
          decoration: BoxDecoration(
            color: ColorManager.grey,
            borderRadius: BorderRadius.circular(20)
            

          ),
          child: Center(child: Text(text, style: getBoldStyle(color: ColorManager.white)))),
    );
  }
}
