import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/login_controller.dart';

class PersonalView extends StatelessWidget {
  const PersonalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        body: GestureDetector(
          onTap: () async {
SignInController(context).signout();
},
          child: Center(
            child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),

                child: Center(child: Text("Sign Out",
                  style: getBoldStyle(color: ColorManager.primarygreeen),))),
          ),
        ),

    );
  }
}

