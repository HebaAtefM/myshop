import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/core/resources/theme_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/language/view_model/language_cubit/language_state.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

import '../view_model/language_cubit/language_cubit.dart';

class Settings extends StatelessWidget {
   Settings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,

        // appBar: AppBar(backgroundColor: getApplicationTheme().appBarTheme.color,
        //   title: Text("settings",
        //     style: getSemiBoldStyle(color: ColorManager.primary),),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if (state is changeLocalState) {
              String  languagecode=state.locale.languageCode;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("change Language".tr(context),
                      style: getSemiBoldStyle(color: ColorManager.primary),),
                    SizedBox(height: 40,),
                    CustomButton(function: (){
                      languagecode="en";
                      BlocProvider.of<LanguageCubit>(context).changeLanguage(languagecode)   ;
                      context.read<LanguageCubit>().changeLanguage(languagecode);
                      Navigator.pushNamed(context, Routes.splashRoute);
                    }, text: 'EN'.tr(context),),


                    SizedBox(height: 20,),
                    CustomButton(text: 'AR'.tr(context), function: () {
                   languagecode= "ar";
                      BlocProvider.of<LanguageCubit>(context).changeLanguage(languagecode)   ;
                      context.read<LanguageCubit>().changeLanguage(languagecode);
                      Navigator.pushNamed(context, Routes.loginRoute);
                    },)
                  ],

                );
              }

            else{
            return SizedBox();
          }}
          ),
        ),
      ),
    );
  }
}
