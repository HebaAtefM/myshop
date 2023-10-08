


import 'package:flutter/material.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view/widgets/category_details.dart';

class Categories extends StatelessWidget {
   Categories({Key? key, required this.image, required this.title, required this.description}) : super(key: key);
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return    SafeArea(child:
    Scaffold(
    body:
    CategoriesDetails(image: image, title: title, description: description,)));
  }
}
