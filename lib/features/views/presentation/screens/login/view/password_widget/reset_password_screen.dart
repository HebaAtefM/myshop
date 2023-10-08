

import 'package:flutter/material.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/strings_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/custom_backbutton.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/text_formfield.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

class ResetPassword extends StatelessWidget {
   ResetPassword({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
    child:   SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CustomBackButton(),
    SizedBox(height: 20,),
    Center(child: Text("Reset password".tr(context),
    style: getMediumStyle(color: ColorManager.primary),)),
    SizedBox(height: 20,),
      Center(child: Text("  Atleast 6 number or character with uppercase and lowercase letters",

        style: getRegularStyle(color: ColorManager.black),),),
    SizedBox(height: 60,),

    Form(
    key: formkey,
    child:SingleChildScrollView(
    child: Column(
    children: [

    TextFormFieldScreen(name:" Enter New Password".tr(context),obsecure: true,
    suffix: IconButton(onPressed: () {  }, icon: Icon(Icons.remove_red_eye),),
    type: TextInputType.visiblePassword,),

    SizedBox(height: 15,),

    TextFormFieldScreen(name: "confirm password".tr(context),obsecure: true,
    type: TextInputType.visiblePassword,
    suffix: IconButton(onPressed: () {  }, icon: Icon(Icons.remove_red_eye),


    ),
    ),

    SizedBox(height: 30,),
      CustomButton(text: "verify".tr(context),function: (){
        Navigator.pushNamed(context, Routes.SuccessflyResetPassword);
      },

      ),

    ]
    )
    ),
    )
    ]
    )
    )
    ))
    );

  }
}
