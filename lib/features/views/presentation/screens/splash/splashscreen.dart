

import 'package:flutter/material.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/splash/splashview_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
body: SplashViewBody(),
    );
  }
}
