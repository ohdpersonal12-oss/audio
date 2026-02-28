import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("USD 350",style: AppStyle.textSize16(AppColors.green),),
                  Text("TMA-2\nHD WIRELESS",style: AppStyle.textSize24(AppColors.textColor),),
                  SizedBox(height: 29,),
                  /// Tabb Bar boshlanishi
                  SizedBox(
                    height: 33,
                    child: TabBar(
                      dividerColor: Colors.transparent,
                      indicatorColor: AppColors.green,
                      controller: tabController,
                        tabs: [
                          Text("Overview",style: AppStyle.textSize16(AppColors.textColor),),
                          Text("Features",style: AppStyle.textSize16(AppColors.textColor),),
                          Text("Specification",style: AppStyle.textSize16(AppColors.textColor),),
                    ]),
                  ),
                  /// Tabbar tugashi

                  /// Tabbar viewer boshlanishi
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                        children: [
                      overView(),
                          Container(color: Colors.red,),
                          Container(color: Colors.green,)
                    ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 12,
          ),
        ],
      ),
    );
  }
  Widget overView(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 391,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (itemBuilder,ctx){
            return Container(
              width: 285,
              height: 391,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Image.asset(AppIcons.headPhone),
            );
          }),
        ),
        Text("Review (102)",style: AppStyle.textSize16(AppColors.textColor),),
      ],
    );
  }
}
