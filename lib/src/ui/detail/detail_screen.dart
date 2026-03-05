import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:audio/src/ui/detail/cart/cart_screen.dart';
import 'package:audio/src/widget/button_widget.dart';
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
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder){
              return CartScreen();
            }));
          }, icon: Icon(Icons.shopping_cart_outlined)),
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
                          sectionOverView(),
                          sectionFeaturesView(),
                          Container(color: Colors.transparent,)
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 24,),
          ButtonWidget(text: "Add To Cart", onTap: (){}),
          SizedBox(height: 24,)
        ],
      ),
    );
  }
  Widget sectionOverView(){
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(height: 28,),
          SizedBox(
            height: 450,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4, itemBuilder: (ctx,index){
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 13),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(AppIcons.person),
                    ),
                    Expanded(child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Irfan",style: AppStyle.textSizeRegular14(AppColors.textColor),),
                            Text("1 Month ago",style: AppStyle.textSizeRegular14(AppColors.grey),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,size: 16,color: Colors.yellow,),
                            Icon(Icons.star,size: 16,color: Colors.yellow),
                            Icon(Icons.star,size: 16,color: Colors.yellow),
                            Icon(Icons.star,size: 16,color: Colors.yellow),
                            Icon(Icons.star,size: 16,color: Colors.grey),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: AppStyle.textSizeRegular14(AppColors.textColor),)
                      ],
                    ))
                  ],
                ),
              );
            }),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(0xffF6F6F6),
            ),
            height: 319,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28,),
                Row(
                  children: [
                    SizedBox(width: 8,),
                    Text("Another Product",style: AppStyle.textSizeRegular14(AppColors.textColor),),
                    Spacer(),
                    Text("See All",style: AppStyle.textSizeRegular14(AppColors.grey),),
                    SizedBox(width: 8,),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                    height: 214,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx,index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder){
                                return DetailScreen();
                              }));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              padding: EdgeInsets.all(15),
                              height: 214,
                              width: 155,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.card,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 125,
                                    height: 135,
                                    child: Image.asset(AppIcons.headPhone),
                                  ),
                                  Spacer(),
                                  Text("TMA-2 HD Wireless",style: AppStyle.textSizeRegular14(AppColors.textColor),),
                                  Text("USD 350",style: AppStyle.textSize14(AppColors.textColor),),
                                ],
                              ),
                            ),
                          );
                        })
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget sectionFeaturesView(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Text("Highly Detailed Audio",style: AppStyle.textSize16(AppColors.textColor),),
          SizedBox(height: 12,),
          Text("The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",style: AppStyle.textSizeRegular14(AppColors.textColor),),
          SizedBox(height: 12,),
          Text("The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",style: AppStyle.textSizeRegular14(AppColors.textColor),),
          SizedBox(height: 24,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 122,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Image.asset(AppIcons.headPhone,fit: BoxFit.cover,),
                ),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("APTX HD WIRELESS AUDIO",style: AppStyle.textSize16(AppColors.textColor),),
                    SizedBox(height: 8,),
                    Text("The Aptx® HD codec transmits 24-bit hi-res audio, equal to or better than CD quality.",style: AppStyle.textSizeRegular14(AppColors.textColor),),
                  ],
                ))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 122,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Image.asset(AppIcons.headPhone,fit: BoxFit.cover,),
                ),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("APTX HD WIRELESS AUDIO",style: AppStyle.textSize16(AppColors.textColor),),
                    SizedBox(height: 8,),
                    Text("The Aptx® HD codec transmits 24-bit hi-res audio, equal to or better than CD quality.",style: AppStyle.textSizeRegular14(AppColors.textColor),),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
