import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/view_models/book_model.dart';
import 'package:rozy_restraunt/features/view_models/books_repository.dart';
import 'package:rozy_restraunt/features/view_models/books_webservices.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/categories_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/calories_healthy_list.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_app_bar.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/home_list_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/page_view_model.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_cubit.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_state.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/homepage_bloc/home_pge_bloc.dart';
import 'package:rozy_restraunt/get_it_dependency.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  // final String text;
  List<Model> items = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
        BooksCubit(getIt.get<HomeRepo>())..featchdBooks(),
        child: BlocBuilder<BooksCubit, BooksState>(


        builder: (context, state) {
    if (state is BooksSuccess) {
    items = state.value;


    return SafeArea(
    child: Scaffold(
    body: SingleChildScrollView(
    child: Container(
    width: Dimensions().width(context),
    height: Dimensions().height(context),
    child: Padding(
    padding:
    const EdgeInsets.only(top: 5.0, left: 10, right: 5),
    child: SingleChildScrollView(
      child: Column(children: [
      CustomAppBar(),
      
      SizedBox(
      height: Dimensions().height(context) / 2,
      child:HomePageView(),
      ),
      SizedBox(height: 5,),
      Align(
        alignment: Alignment.centerLeft,
          child: Text("shoppin Now",style: getBoldStyle(color: ColorManager.primary),)),
        SizedBox(height: 20,),
    HomeListView(),


        ]
    ),

    )
    ))
          )
          )
    );

    }
    else{
      return CircularProgressIndicator();
    }
    })
        );
  }
}
