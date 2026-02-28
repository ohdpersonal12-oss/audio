import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:audio/src/ui/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = [
    "Headphone",
    "Headband",
    "Earpads",
    "Cable",
  ];
  int selectedIndex = 0;
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 14,),
                  /// Kategoriya bo'limi boshlanishi
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                        itemBuilder: (ctx,index){
                      return GestureDetector(
                        onTap: (){
                          selectedIndex = index;
                          setState(() {

                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedIndex == index?AppColors.green:Colors.transparent,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 2.5),
                          child: Text(category[index],style: AppStyle.textSize14(selectedIndex == index?AppColors.textColorWhite:AppColors.grey),),
                        ),
                      );
                    }),
                  ),
                  /// Kategoriya bo'limi tugashi


                  /// Banner Card bolimi boshlanishi
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 178,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx,index){
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                        width: 326,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.card
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 138,
                                  child: Text("TMA-2 Modular Headphone",style: AppStyle.textSize24(AppColors.textColor),),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("Shop now",style: AppStyle.textSize14(AppColors.green),),
                                    Icon(Icons.arrow_forward_outlined,color: AppColors.green,)
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: Image.asset(AppIcons.headPhone,width: 117,height: 135,))
                          ],
                        ),
                      );
                    }),
                  ),
                  /// Banner Card bolimi tugashi
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured Products",style: AppStyle.textSize16(AppColors.textColor),),
                        Text("See All",style: AppStyle.textSize14(AppColors.grey),)
                      ],
                    ),
                  ),
                  /// Mahuslot Card bolimi boshlanishi
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
            ),
          ),),
        ],
      ),
    );
  }
}
