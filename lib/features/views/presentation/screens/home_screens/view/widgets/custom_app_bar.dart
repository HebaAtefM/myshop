import 'package:flutter/material.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(

          child:  Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(

            children: [

              Text("Shop App",style: getMediumStyle(color: ColorManager.primary),),



            ],
        ),
          ),),
        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: ColorManager.grey1,size: 20,))
      ],
    );
  }
}
