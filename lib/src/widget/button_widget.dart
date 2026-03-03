import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.green
        ),
        child: Text(text,style: AppStyle.textSize16(AppColors.textColorWhite),),
      ),
    );
  }
}
