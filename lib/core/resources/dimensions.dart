

import 'package:flutter/material.dart';
class Dimensions{

double height(BuildContext context) {
  return MediaQuery
      .of(context)
      .size
      .height;
}

double width(BuildContext context) {
  return MediaQuery
      .of(context)
      .size
      .width;
}

}

