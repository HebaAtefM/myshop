import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/strings_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/login_controller.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/sign_in_bloc/login_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/custom_backbutton.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/flutter_toast.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/text_formfield.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailAdrees = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body:        Stack(

                children:[
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
                        ColorManager.grey.withOpacity(.2),
                        ColorManager.grey.withOpacity(.2),

                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter

                  ),




                ),child:
                  Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(alignment: Alignment.topLeft,

                              child: CustomBackButton()),
                          SizedBox(height: 30,),
                          Center(child: Text("Forget Password".tr(context),
                            style: getBoldStyle(color: ColorManager.white),)),
                          SizedBox(height: 10,),


                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text("Dont worry please enter the address"
                                " you associate with your account".tr(context),
                              maxLines: 2,

                              overflow: TextOverflow.fade,
                              style: getBoldStyle(color: ColorManager.black),),
                          ),


                          SizedBox(height: 50,),

                          Form(
                            key: formkey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [

                                  TextFormFieldScreen(
                                    controller: emailAdrees,
                                    validator: (value) {
                                      if (emailAdrees == null) {
                                        return toastInfo(
                                            msg: "you need to fill email address"
                                                .tr(
                                                context));
                                      }
                                    },
                                    functionontap: () {

                                    },
                                    onchange: (value) {
                                      context.read<LoginBloc>().add(
                                          EmailLoginEvent(value));
                                    },
                                    obsecure: false,
                                    name: "Enter Your Email Address".tr(context),
                                    type: TextInputType.emailAddress,),

                                  SizedBox(height: 20,),
                                  CustomButton(text: "submit".tr(context),
                                    function: () async {


                                       SignInController(context).handleForgetPassword();



                                    },),


                                ],
                              ),
                            ),
                          ),
                        ]
                    ),

                  ),
                ),
            )
            ]
            ),
              ),

          );
        },
      ),
    );
  }
}
