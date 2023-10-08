

import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back_ios,color: ColorManager.primary,),

    );
  }
}
