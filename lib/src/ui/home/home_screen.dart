import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Image.asset(AppIcons.logo,height: 25,width: 84,),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.green,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 29,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Hi, Andrea",style: AppStyle.textSize14(AppColors.textColor),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: 326,
                child: Text("What are you looking for today?",style: AppStyle.textSize24(AppColors.textColor),)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.grey),
              ),
              child: Expanded(child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  border: InputBorder.none,
                  hintText: "Search headphone",

                ),
              )),
            ),
          ),
          SizedBox(height: 25,),
          Expanded(child: Container(
           decoration:BoxDecoration(
             color: Color(0xffF6F6F6),
             borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
           ),
          ))
        ],
      ),
    );
  }
}
