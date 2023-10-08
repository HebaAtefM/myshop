import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/constance/constance.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/flutter_toast.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view_model/register_model.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view_model/sign_up_bloc/rigester_bloc.dart';


class RegisterController {
  final BuildContext context;
  File? image;
String userphotourl="";
bool _isloading=false;
  RegisterController(this.context);

  Future<void> handleSignIn() async {
    final state = context
        .read<RigesterBloc>()
        .state;
    String name = state.name;
String uId=state.Uid;
    String emailaddress = state.email;
    String password = state.password;
    String repassword = state.retypepassword;


    if (name.isEmpty) {
      toastInfo(msg: "you need to fill name field".tr(context));
      return;
    }

    if (emailaddress.isEmpty) {
      toastInfo(msg: "you need to fill email address".tr(context));
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: "you need to fill password field");
      return;
    }
    if (repassword.isEmpty && repassword != password) {
      toastInfo(msg: "you  password  confirmation is wrong");
      return;
    }


    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailaddress,
          password: password);

      if (credential.user != null) {
        var uid=credential.user!.uid;
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);


        createuser(name: name, email: emailaddress, uid: uid);

        toastInfo(msg: "an email has been sent to your register email"
            ",to active it please check your email and click on the link".tr(context));
        Navigator.of(context).pop();

      }
      if (!credential.user!.emailVerified) {
        toastInfo(msg: "you need to verify email account".tr(context));
        return;
      }
      var user = credential.user;
      if (user != null) {

        Navigator.pushReplacementNamed(context, Routes.loginRoute);
        toastInfo(msg: "user exist");
        return;
      } else {
        toastInfo(msg: "currently you are not auser of this app");
        return;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print("no user found");
        toastInfo(msg: "weak-password");
        return;
      } else if (e.code == "email-already-in-use") {
        print("wrong password for that user");
        toastInfo(msg: "email-already-in-use");
        return;
      } else if (e.code == "invalid-email") {
        toastInfo(msg: "your email address format  is wrong");
        return;
      }
    }
    _isloading=false;
  }
void createuser({
  required String name,
  required String email,
  required String uid,


}){
usermodel user=usermodel(uid, email, name,);

  FirebaseFirestore.instance.collection("user").doc(uid).set(
    user.tomap()
  );

}
}

