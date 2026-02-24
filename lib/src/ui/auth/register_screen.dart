import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/images/background.png",fit: BoxFit.cover,),
          ),
          Positioned(
            top: 82,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 110.0),
                  child: Text("AUDIO",style: AppStyle.textSize51(AppColors.textColorWhite),),
                ),
                Text("It's modular and designed to last",style: AppStyle.textSize14(AppColors.textColorWhite),),
                SizedBox(height: 247,),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  margin: EdgeInsets.only(left: 0),
                  width: MediaQuery.of(context).size.width *0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.backgroundColor
                  ),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(AppIcons.email,),
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  margin: EdgeInsets.only(left: 0),
                  width: MediaQuery.of(context).size.width *0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.backgroundColor
                  ),
                  child: Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(AppIcons.lock,),
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  width: MediaQuery.of(context).size.width *0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.green
                  ),
                  child: Text("Sign Up",style: AppStyle.textSize16(AppColors.textColorWhite),),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: SvgPicture.asset(AppIcons.apple),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: SvgPicture.asset(AppIcons.facebook),
                    ),
                    SizedBox(width: 12,),
                    Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: SvgPicture.asset(AppIcons.search),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Text("If you have an account? ",style: AppStyle.textSize14(AppColors.textColorWhite),),
                    SizedBox(width: 8,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Text("Sign In here",style: AppStyle.textSize14(AppColors.green,isunderline: true),))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
