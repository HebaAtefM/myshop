import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/strings_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/text_formfield.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view_model/register_controller.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view_model/sign_up_bloc/rigester_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider(
      create: (context) => RigesterBloc(),
      child: BlocBuilder<RigesterBloc, RegisterState>(
        builder: (context, state) {
          return Scaffold(


              body: Stack(
                children: [
                  Container(
                    width:Dimensions().width(context),
                    height:Dimensions().height(context),


                    decoration: BoxDecoration(

                    ),
                    child:

                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: 'https://static.vecteezy.com/system/resources/previews/000/670/721/original/vector-woman-online-shopping-with-smartphone-technology-graphic.jpg',

                    ),

                  ),
                  Container(
                    width:Dimensions().width(context),
                    height:Dimensions().height(context),


                    decoration: BoxDecoration(
                     gradient: LinearGradient(
                         colors:[
                       ColorManager.grey.withOpacity(.2),
                           ColorManager.grey1.withOpacity(.2),
                           ColorManager.grey2.withOpacity(.2),

                         ],
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter

                     ),




                    ),
                    child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //CustomBackButton(),

                          SizedBox(
                            height: 40,
                          ),

                          Form(
                            key: formkey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [


                                  SizedBox(
                                    height: 15,
                                  ),


                                  TextFormFieldScreen(
                                    name: "Name".tr(context),
                                    icon: Icons.people_outline_sharp,

                                    onchange:(value){
                                      context.read<RigesterBloc>().add(NameRegisterEvent(value));
                                    },


                                    type: TextInputType.text,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormFieldScreen(
                                      name: "Email".tr(context),
                                      icon: Icons.email,
                                      type: TextInputType.emailAddress,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(EmailRegisterEvent(value));
                                    },
                                     ),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  TextFormFieldScreen(
                                    name: "password".tr(context),
                                    obsecure: BlocProvider.of<RigesterBloc>(context).obsecuretext,

                                    icon: Icons.lock_clock_rounded,
                                    type: TextInputType.visiblePassword,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(passwordRegisterEvent(value));
                                    },
                                    suffix: IconButton(onPressed: () {
                                      BlocProvider.of<RigesterBloc>(context)
                                          .changeObsecureTextevent();
                                    },

    icon: BlocProvider.of<RigesterBloc>(context).icon

                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormFieldScreen(
                                    name: "retype password".tr(context),
                                    obsecure: BlocProvider.of<RigesterBloc>(context).obsecuretext,
                                    icon: Icons.password,
                                    type: TextInputType.visiblePassword,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(ReTypepasswordRegisterEvent(value));
                                    },
                                    suffix: IconButton(onPressed: () {
                                      BlocProvider.of<RigesterBloc>(context)
                                          .changeObsecureTextevent();
                                    },

                                        icon: BlocProvider.of<RigesterBloc>(context).icon

                                    ),
                                  ),

                                  SizedBox(
                                    height: 15,
                                  ),
                                  CustomButton(
                                    text: "SignUp".tr(context),
                                      function:(){
                                        RegisterController(context).handleSignIn();

                                      }

                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),


                                  SizedBox(
                                    height: 8,
                                  ),

                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have anaccount?".tr(context),
                                        style: getRegularStyle(
                                            color: ColorManager.black),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, Routes.loginRoute);
                                          },
                                          child: Text(
                                            "SignIn".tr(context),
                                            style: getBoldStyle(
                                                color: ColorManager.white),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
            ),
          ),
                  ),


                ],
              ));
        },
      ),
    ));
  }



}
