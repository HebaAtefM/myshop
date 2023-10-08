import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/sign_in_bloc/login_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/flutter_toast.dart';

class SignInController {
  final BuildContext context;

  SignInController(this.context);

  void handleSignIn(String type) async {
    try {
      final state = context
          .read<LoginBloc>()
          .state;
      String emailaddress = state.email;
      String password = state.password;
      if (emailaddress.isEmpty) {
        toastInfo(msg: "you need to fill email address".tr(context));
        return;
      }
      if (password.isEmpty) {
        toastInfo(msg: "you need to fill password address".tr(context));
        return;
      }
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: emailaddress,
            password: password);
        if (credential.user == null) {
          toastInfo(msg: "you dont exist".tr(context));
          return;
        }
        if (!credential.user!.emailVerified) {
          toastInfo(msg: "you need to verify email account".tr(context));
          return;
        }
        var user = credential.user;
        if (user != null) {
          Navigator.pushReplacementNamed(context, Routes.homepage);
          toastInfo(msg: "user exist".tr(context));
          return;
        } else {
          toastInfo(msg: "currently you are not auser of this app".tr(context));
          return;
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          print("no user found");
          toastInfo(msg: "no user found".tr(context));
          return;
        } else if (e.code == "wrong-password") {
          print("wrong provided for that user");
          toastInfo(msg: "wrong provided for that user".tr(context));
          return;
        } else if (e.code == "invalid-email") {
          toastInfo(msg: "your email address format  is wrong".tr(context));
          return;
        }
      }
    }

    //   if (type == "email") {
    //     // BlocProvider.of<LoginBloc>(context).state;
    //
    // }
    catch (e) {
      print(e.toString());
    }
  }

  void handleForgetPassword() async {
    final state = BlocProvider
        .of<LoginBloc>(context)
        .state;
    String emailaddress = state.email;
    if (emailaddress.isEmpty) {
      toastInfo(msg: "you need to fill email address".tr(context));
      return;
    }
      final credential =
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailaddress)
          .then((value) {
        toastInfo(msg: "please goto email and verify password");
        Navigator.pushNamed(context, Routes.SuccessflyResetPassword);
      });




  }

  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
    //Navigator.pushNamed(context, Routes.loginRoute);

  }


    void signInWithGoogle() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

if(googleUser==null){
  return ;
}
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
       await FirebaseAuth.instance.signInWithCredential(credential);
       Navigator.pushNamed(context, Routes.homepage);
    }
  }


