


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/assets_manager.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/dimensions.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/custom_button.dart';

class CategoriesDetails extends StatelessWidget {
   CategoriesDetails({Key? key, required this.image, required this.title, required this.description}) : super(key: key);
final String image;
final String title;
final String description;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: GestureDetector(
              onTap: (){
               // Navigator.pushNamed(context, Routes.category);
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: Dimensions().width(context)/60,
                    horizontal:Dimensions().height(context)/90 ),
                child:   Container(

                  width: Dimensions().width(context),

                  height: Dimensions().height(context),


                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        child: CachedNetworkImage( imageUrl: image       ,
                            height: Dimensions().height(context),
                          width: Dimensions().width(context),
                          fit: BoxFit.cover,

                        ),
                      ),
                      SingleChildScrollView(
                     child: Container(
                          height: Dimensions().height(context)/1.5,
                          width: Dimensions().width(context),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
                            color: ColorManager.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Dimensions().height(context)/10
                                  ,child: Text(title,
                                    style: getBoldStyle(color: ColorManager.black),),
                                ),
                                SizedBox(
                                  height: Dimensions().height(context)/10,

                                  child: Text(description,
                                  overflow: TextOverflow.ellipsis,maxLines: 3,style: getsmallStyle(color: ColorManager.darkGrey),),
                                ),
                                Divider(
                                  height: 100,color: ColorManager.black,
                                ),
                                Container(
                                  height: Dimensions().height(context)/10,

                                  width: Dimensions().width(context),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.access_time,color:ColorManager.grey     ),
                                          Text("40 mins",style: getsmallStyle(color: ColorManager.grey ),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.fastfood_outlined,color:ColorManager.grey     ),
                                          Text("server",style: getsmallStyle(color: ColorManager.grey ),),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: Dimensions().height(context)/10,

                                    child: CustomButton(text: 'Details',function: (){
                                      Navigator.pushNamed(context, Routes.homepage);
                                    },)),




                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back_ios,color: ColorManager.black,)),
                      )


                    ],
                  ),

                ),
              ),
            ),
      ),
    );

  }
}
