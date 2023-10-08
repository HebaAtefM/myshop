

import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/strings_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/carts.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/categories_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/customdetails.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/home_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/payment_way_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/personal_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/shopping_list.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/items_list.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view/password_widget/forget_password_screen.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view/password_widget/resetpassword_scuccessfully.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view/signin_screen.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view/signup_screen.dart';

import '../../features/views/presentation/screens/language/view/settings.dart';
import '../../features/views/presentation/screens/splash/splashscreen.dart';

class Routes {
  static const String splashRoute = "/splashRoute";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String homepage = "/home";
  static const String storeDetailsRoute = "/storeDetails";
  static const String OPTRoute = "/optscreen";
  static const String VerifySignUp='/verifysignup';
  static const String ResetPassword='/ResetPassword';
  static const String SuccessflyResetPassword='/SuccessflyResetPassword';
  static const String VerifySignUpScuccessfly='/VerifySignUpScuccessfly';
  static const String Settings='/';
  static const String PhoneAuth='/PhoneAuth';
  static const String selling='/selling_details';
  static const String carts='/carts';
  static const String payment='/payment';
  static const String personalsetting='/personalsetting';
  static const String category='/category';
  static const String shoppinglist='/shoppinglist';
  static const String customdetails='/customdetails';










}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.Settings:
        return MaterialPageRoute(builder: (_) =>  Settings());
    case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());


      case Routes.SuccessflyResetPassword:
        return MaterialPageRoute(builder: (_) =>  SuccessflyResetPassword());
      case Routes.homepage:
        return MaterialPageRoute(builder: (_) =>  HomeView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>  SignUpScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  SignInScreen());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) =>  ForgetPassword());


      case Routes.homepage:
        return MaterialPageRoute(builder: (_) =>  HomeView());

      case Routes.carts:
        return MaterialPageRoute(builder: (_) =>  CartPageView());
        case Routes.payment:
      return MaterialPageRoute(builder: (_) =>  PayMentWayView());

      case Routes.personalsetting:
        return MaterialPageRoute(builder: (_) =>  PersonalView());
      // case Routes.category:
      //   return MaterialPageRoute(builder: (_) =>  Categories());
      case Routes.shoppinglist:
        return MaterialPageRoute(builder: (_) =>  ShoppingList());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.skip.trim()),
              ),
              body: Center(child: Text(AppStrings.skip.trim())),
            ));
  }
}
