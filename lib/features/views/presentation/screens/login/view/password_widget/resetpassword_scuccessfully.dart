

import 'package:flutter/material.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/strings_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/custom_backbutton.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';


class SuccessflyResetPassword extends StatelessWidget {
  const SuccessflyResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
          child: Column(
            children: [
              Align(alignment:Alignment.topLeft,child: CustomBackButton()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 60,),
                  Center(child:
                  Container(
                      width: double.infinity,
                      child: Icon(Icons.check_circle_outline,size:100,color: ColorManager.primary,)
                   ),),
                  SizedBox(height: 40,),

                  Center(child: Text("Success".tr(context),
                    style: getSemiBoldStyle(color: ColorManager.primary),)),
                  SizedBox(height: 20,),
                  Center(child: Text("  Your Password has been reset Successfly".tr(context),

                    style: getRegularStyle(color: ColorManager.black),)),
                  SizedBox(height: 40,),
                  CustomButton(text:"Go Moody Again".tr(context),function: (){
                    Navigator.pushNamed(context, Routes.loginRoute);
                  },

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
