import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo({
  required String msg,
Color backgroundColor=Colors.black,
Color textColor=Colors.white,







}){
  return Fluttertoast.showToast(msg: msg,
      toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,backgroundColor: backgroundColor,
  timeInSecForIosWeb: 2,textColor: textColor,);
}