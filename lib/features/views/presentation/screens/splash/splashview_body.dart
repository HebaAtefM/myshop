

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
class SplashViewBody extends StatefulWidget {
  SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  // initstate

  @override
  void initState() {
    initslidAnimation();
    navigatetohomepage();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  void navigatetohomepage (){

    Future.delayed(Duration(seconds: 4),(){
Navigator.pushNamed(context, Routes.homepage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          color: ColorManager.primary.withOpacity(.2),
          width: Dimensions().width(context),
          height: Dimensions().height(context),
          
          child: AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(

                    position: slidingAnimation,
                    child: CachedNetworkImage(
                   fit: BoxFit.cover, imageUrl: 'https://static.vecteezy.com/system/resources/previews/000/670/721/original/vector-woman-online-shopping-with-smartphone-technology-graphic.jpg',

                    ),
                   
                );
              }
          ),
        ),
      ],
    );
  }

  void initslidAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset.zero).animate(
            animationController);


    animationController.forward();
  }
}