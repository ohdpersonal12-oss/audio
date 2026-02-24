import 'package:audio/src/apptheme/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle textSize51(Color color){
    return TextStyle(
      fontSize: 51,
      fontWeight: FontWeight.bold,
      color: color
    );
  }
  static TextStyle textSize14(Color color, {bool isunderline = false} ){
    return TextStyle(
        decoration: isunderline?TextDecoration.underline:TextDecoration.none,
        decorationColor: AppColors.green,
        decorationThickness: 3,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: color
    );
  }
  static TextStyle textSizeRegular14(Color color){
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: color
    );
  }
  static TextStyle textSize16(Color color){
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: color
    );
  }
  static TextStyle textSize24(Color color){
    return TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color
    );
  }
}