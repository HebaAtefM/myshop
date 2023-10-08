import 'package:cached_network_image/cached_network_image.dart';
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
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/categories_view.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_cubit.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_state.dart';
import 'package:rozy_restraunt/get_it_dependency.dart';

class HomeListView extends StatelessWidget {
  HomeListView({Key? key,this.ontap,  }) : super(key: key);

List<Model> items=[];

  void Function()? ontap;


  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
          create: (context) =>
          BooksCubit(getIt.get<HomeRepo>())..featchdBooks(),
          child: BlocBuilder<BooksCubit, BooksState>(


          builder: (context, state) {
            if (state is BooksSuccess) {
              items = state.value;

            return  SingleChildScrollView(
                  child: Container(

                    //color: ColorManager.white,

                    height: Dimensions().height(context) / 2,

                    width: Dimensions().width(context) * .99,


                    child:

                    ListView.builder(

                        itemCount: items.length,

                        scrollDirection: Axis.horizontal,

                        shrinkWrap: true,

                        itemBuilder: (context, index) {
                          return


                            Padding(

                                padding: const EdgeInsets.all(8.0),

                                child: Container(
                                  height: Dimensions().height(context) / 3,

                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(12),

                                      color: Colors.grey


                                  ),

                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder:
                                              (_) =>
                                              Categories(
                                                  image: items[index].image
                                                      .toString(),
                                                  title: items[index].title
                                                      .toString(),
                                                  description: items[index]
                                                      .description
                                                      .toString())));
                                    },
                                    child: CachedNetworkImage(
                                        imageUrl: items[index].image
                                            .toString()),
                                  ),


                                )


                            );
                        }
                    ),
                  )
              );
            }
            else{
              return CircularProgressIndicator();
            }
          }
      )
    );




    }

    }






