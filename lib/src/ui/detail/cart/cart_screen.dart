import 'package:audio/src/apptheme/app_color.dart';
import 'package:audio/src/apptheme/app_icons.dart';
import 'package:audio/src/apptheme/app_style.dart';
import 'package:audio/src/model/product_model.dart';
import 'package:audio/src/widget/button_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int summa = 0;
  List<ProductModel> productModel = [
    ProductModel(name: "TMA-2 Comfort Wireless ", count: 1, img: AppIcons.headPhone, price: 100),
    ProductModel(name: "TMA-2 Comfort Wireless ", count: 1, img: AppIcons.person, price: 100),
    ProductModel(name: "TMA-2 Comfort Wireless ", count: 1, img: AppIcons.logo, price: 100),
    ProductModel(name: "TMA-2 Comfort Wireless ", count: 1, img: AppIcons.headPhone, price: 100),
  ];
  @override
  void initState() {
    for(int i =0;i<productModel.length;i++){
      summa += productModel[i].count*productModel[i].price;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: Text("Shopping Cart",style: AppStyle.textSize16(AppColors.textColor),),
        actions: [
          IconButton(onPressed: (){
            productModel.clear();
            summa = 0;
            setState(() {

            });
          }, icon: Icon(Icons.delete_forever_rounded))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: productModel.length,
              itemBuilder: (ctx,index){
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 17),
              width: MediaQuery.of(context).size.width,
              height: 88,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 88,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset(productModel[index].img),
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productModel[index].name,style: AppStyle.textSize16(AppColors.textColor),),
                      Text(productModel[index].price.toString(),style: AppStyle.textSize14(AppColors.textColor),),
                      Expanded(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                if(productModel[index].count>1){
                                  productModel[index].count--;
                                  summa -= productModel[index].price;
                                  setState(() {
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 25),
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.grey),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Text(productModel[index].count.toString(),style: AppStyle.textSize16(AppColors.textColor),),
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.only(left: 25),
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.grey),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(Icons.add),
                              ),
                              onTap: (){
                                productModel[index].count++;
                                summa += productModel[index].price;
                                setState(() {

                                });
                              },
                            ),
                            Spacer(),
                            IconButton(onPressed: (){
                              summa -= productModel[index].price*productModel[index].count;
                              productModel.removeAt(index);
                              setState(() {

                              });
                            }, icon: Icon(Icons.delete_outline))
                          ],
                        ),
                      )
                    ],
                  ))
                ],
              ),
            );
          }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total 2 Items",style: AppStyle.textSize14(AppColors.grey),),
                Text("USD $summa",style: AppStyle.textSize16(AppColors.textColor),),
              ],
            ),
          ),
          ButtonWidget(text: "Proceed to Checkout", onTap: (){}),
          SizedBox(height: 34,),
        ],
      ),
    );
  }
}
