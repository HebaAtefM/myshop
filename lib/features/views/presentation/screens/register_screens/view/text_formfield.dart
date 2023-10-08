import 'package:flutter/material.dart';
import 'package:rozy_restraunt/core/resources/color_manager.dart';
import 'package:rozy_restraunt/core/resources/styles_manager.dart';

class TextFormFieldScreen extends StatelessWidget {
   TextFormFieldScreen({Key? key, required this.name,
      this.icon, required this.type, this.suffix,  this.function, this.functionontap,this.onchange,
     this.validator,
     this.controller,    this.obsecure,
     }) : super(key: key);
final String name;
final IconData? icon;
final TextInputType type;
final IconButton? suffix;
 final  bool? obsecure;
   void Function(String)? onchange;


void Function(String)? function;

   void Function()? functionontap;
   String? Function(String?)? validator;
   TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      style: getBoldStyle(color: ColorManager.white),
      obscureText: obsecure??false,
      onChanged:onchange ,
      controller: controller,validator:validator ,
      keyboardType:type,
onFieldSubmitted: function,
      onTap: functionontap,
      decoration: InputDecoration(
        labelStyle:getBoldStyle(color: ColorManager.white) ,
        hintText: name,
        
        suffixIcon: suffix,

        hintStyle: getBoldStyle(color: ColorManager.white),
        prefixIcon: Icon(icon ),
        prefixIconColor: ColorManager.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),

        ),

      ),
    );
  }
}
