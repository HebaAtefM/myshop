import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/login_controller.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/sign_in_bloc/login_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/text_formfield.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LoginBloc(),
  child: BlocConsumer<LoginBloc, LoginState>(
  listener: (context, state) {



  },
  builder: (context, state) {
    return SafeArea(
    child: Scaffold(
    body:  Stack(
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
                  ColorManager.grey.withOpacity(.2),
                  ColorManager.grey.withOpacity(.2),

                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter

            ),




          ),
          child: Padding(
      padding: const EdgeInsets.symmetric(
      horizontal: 30.0, vertical: 10),
      child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     // CustomBackButton(),
      SizedBox(height: 20,),
      Center(child: Text("SignIn".tr(context),
      style: getSemiBoldStyle(color: ColorManager.white),)),
      SizedBox(height: 80,),

      Form(
      key: formkey,
      child: SingleChildScrollView(
      child: Column(
      children: [

      TextFormFieldScreen(name: "Email".tr(context),
obsecure: false,
      icon: Icons.email,
      type: TextInputType.emailAddress,
      onchange:(value){
        context.read<LoginBloc>().add(EmailLoginEvent(value));
      },

      ),

      SizedBox(height: 15,),



       TextFormFieldScreen(

      name: "password".tr(context),
      obsecure: BlocProvider.of<LoginBloc>(context).obsecuretext,

      icon: Icons.lock_clock_rounded,
      onchange:(value){
      context.read<LoginBloc>().add(passwordLoginEvent(value));
      },


      type: TextInputType.visiblePassword,

      suffix: IconButton(onPressed: () {
         BlocProvider.of<LoginBloc>(context).changeObsecureTextevent();

      },
      icon: BlocProvider.of<LoginBloc>(context).icon



      ),
       ),




      SizedBox(height: 10,),
      Align(

      alignment: Alignment.centerRight,
      child: TextButton(onPressed: () {

      Navigator.pushNamed(
      context, Routes.forgotPasswordRoute);
      },
      child: Text(
      "Forget Password".tr(context),
      style: getBoldStyle(
      color: ColorManager.white),))),
      SizedBox(height: 15,),

      CustomButton(text: "SignIn".tr(context),
      function: () {
        SignInController(context).handleSignIn("email");


      },
      ),
      SizedBox(height: 15,),







      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Dont have an account?".tr(context),
      style: getRegularStyle(
      color: ColorManager.black),),
      TextButton(onPressed: () {
      Navigator.pushNamed(
      context, Routes.registerRoute);
      },
      child: Text("SignUp".tr(context),
      style: getSemiBoldStyle(
      color: ColorManager.primary),))
      ],
      )


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
    )
    )
    );
    }





  ),
    );

  }
}

