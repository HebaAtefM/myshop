import 'package:dio/dio.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/view_models/book_model.dart';
import 'package:rozy_restraunt/features/view_models/books_repository.dart';
import 'package:rozy_restraunt/features/view_models/books_webservices.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/pageview_content.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_cubit.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_state.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/homepage_bloc/home_pge_bloc.dart';
import 'package:rozy_restraunt/get_it_dependency.dart';
import 'package:cached_network_image/cached_network_image.dart';


class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);
  List<Model> items = [];

  @override
  State<HomePageView> createState() => _HomePageViewState();
}


class _HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  PageController pageController = PageController(
      viewportFraction: 1, initialPage: 0);


  @override
  void initState() {
    initslidAnimation();
    navigatetohomepage();
    super.initState();
  }


  void navigatetohomepage() {
    Future.delayed(Duration(seconds: 4), () {
      pageController.nextPage(
          duration: Duration(seconds: 2), curve: Curves.easeInOut);
    });
  }

  void navigatetoprevious() {
    Future.delayed(Duration(seconds: 4), () {
      pageController.previousPage(
          duration: Duration(seconds: 2), curve: Curves.easeInOut);
    });
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>HomePgeBloc(),

      child: BlocBuilder<HomePgeBloc, HomePgeState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.category);
            },
            child: AnimatedBuilder(
                animation: slidingAnimation,
                builder: (context, _) {
                  return SlideTransition(

                      position: slidingAnimation,
                      child: BlocProvider(
                          create: (context) =>
                          BooksCubit(getIt.get<HomeRepo>())
                            ..featchdBooks(),
                          child: BlocBuilder<BooksCubit, BooksState>(


                              builder: (context, state) {
                                if (state is BooksSuccess) {
                                  widget.items = state.value;
                                  return ListView(
                                      children: [
                                        Container(
                                            height: Dimensions().height(
                                                context)/3 ,
                                            width: Dimensions().width(context),
                                            decoration: BoxDecoration(
                                              // shape: BoxShape.rectangle,
                                            ),


                                            child:
                                            PageView.builder(
                                              controller: pageController,
                                              allowImplicitScrolling: true,
                                              physics: ScrollPhysics(),

                                              onPageChanged: (value) {
                                                BlocProvider.of<HomePgeBloc>(
                                                    context).add(
                                                    PageViewEvent(value));


                                                navigatetohomepage();
                                              },
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return

                                                  CachedNetworkImage(
                                                    imageUrl: widget
                                                        .items[index].image
                                                        .toString(),


                                                    fit: BoxFit.cover,
                                                  );
                                              },
                                            )
                                        ),
                                        Container(
                                          height: Dimensions().height(
                                              context) /6,
                                          width: double.infinity,
                                          child: Center(

                                            child: DotsIndicator(

                                              onTap: (double value) {
                                                BlocProvider.of<HomePgeBloc>(
                                                    context).add(
                                                    PageViewEvent(
                                                        value as int));
                                                navigatetohomepage();
                                              },

                                              dotsCount: 5,

                                              position: 3.toDouble(),
                                              reversed: false,

                                              decorator: DotsDecorator(


                                                color: ColorManager.grey,
                                                // Inactive color

                                                activeColor: ColorManager
                                                    .primary,

                                              ),

                                            ),

                                          ),
                                        ),




                                      ]
                                  );
                                }
                                else {
                                  return CircularProgressIndicator();
                                }
                              }


                          )

                      ));
                }


            ),
          );
        },

      ),
    );
  }


  void initslidAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    slidingAnimation =
        Tween<Offset>(begin: Offset(0, 2), end: Offset.zero).animate(
            animationController);


    animationController.forward();
  }


}
