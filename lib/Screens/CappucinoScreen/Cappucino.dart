import 'package:coffee_clone/Constants/assets_path.dart';
import 'package:coffee_clone/Constants/color_path.dart';
import 'package:coffee_clone/Constants/textsconstant.dart';
import 'package:coffee_clone/Screens/OrderScreen/OrderScreen.dart';
import 'package:coffee_clone/Screens/SecondScreen/SecondScreen.dart';
import 'package:flutter/material.dart';


class Cappucciano extends StatefulWidget {
  const Cappucciano({super.key});

  @override
  State<Cappucciano> createState() => _CappuccianoState();
  
}

class _CappuccianoState extends State<Cappucciano> {
  int current =0;

int index =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SecondScreen()));
                    },
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset(CoffeeAssetsPath.LeftArrowImage, color: BlackishColor2,),
                       ],
                     ),
                   ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 50.0),
                      child: Text(
                        TextPath.Detail,  style: TextStyle(fontFamily: CoffeeAssetsPath.Fonts, fontWeight: FontWeight.w600, color: BlackishColor2, fontSize: 18.0),),
                    ),
                  ],
                ),
                Column(
                     children: [
                       Image.asset(CoffeeAssetsPath.HeartImage,color: BlackishColor2,),
                       
                     ],
                   ),
               
                ],
              ),
            ),
          
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Image.asset(CoffeeAssetsPath.CappucinoImage3),
            ),
          SizedBox(
            height: 25.0,
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.only(left: 50.0, right: 50),
               child: Text(TextPath.Cappucciano, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0, fontFamily:CoffeeAssetsPath.Fonts, color: BlackishColor2)),
             ),
        
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Text(TextPath.With_Chocolate, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0,fontFamily: CoffeeAssetsPath.Fonts, color: GreyColor)),
              ),
             SizedBox(
              height: 10.0,
             ),
             
             Padding(
               padding: const EdgeInsets.only(left: 50),
               child: Row(
                 children: [
                  Image.asset(CoffeeAssetsPath.StarImage),
                   Text(TextPath.Rating, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackishColor2),),
                   Padding(
                     padding: const EdgeInsets.only(left: 3.0),
                     child: Text(TextPath.Bracket, style: TextStyle(color: GreyColor, fontFamily: CoffeeAssetsPath.Fonts)),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(left: 125.0),
                    child: Image.asset(CoffeeAssetsPath.RowImage1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Image.asset(CoffeeAssetsPath.RowImage2),
                  )
                
                 ],
               ),
             )
            ],
          ),
           Padding(
         padding: const EdgeInsets.symmetric(horizontal: 55.0),
         child: SizedBox(
          height: 70.0,
          width: 350.0,
          child: Divider(
            height: 5.0,
            thickness: 2.0,
            color:WhitishColor4,
          ),
         ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 55.0),
             child: Text(TextPath.Description, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackishColor2),),
           ),
         SizedBox(
          height: 15.0,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 55.0, right: 55),
           child: Container(
            width:300.0,
            child: Text(
              TextPath.DescriptionText, style: TextStyle(fontWeight: FontWeight.w400, fontFamily: CoffeeAssetsPath.Fonts, fontSize: 14.0,color: GreyColor
            ),
            
            ),
            ),
         ),
        SizedBox(
          height: 20.0,
        ),
        
        Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Text(TextPath.Size, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackishColor2)),
        ),
      SizedBox(
        height: 15.0,
      ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: BlackColor)
                ),
               child: Center(
              child: Text(TextPath.Small,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: CoffeeAssetsPath.Fonts) ),
               ),
              ), 
        
               Container(
                 height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: OrangeColor,
                    border: Border.all(color: BlackColor),
                ),
               child: Center(child: Text(TextPath.Medium,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: CoffeeAssetsPath.Fonts, color: BlackColor),)),
               ),
        
               Container(
                 height: 45.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: BlackColor)                ),
                child: Center(
                child: Text(TextPath.Large,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: CoffeeAssetsPath.Fonts, color: BlackColor) ),
               ),
               ),
            ],
          ),
        ),
          Padding(
         padding: const EdgeInsets.symmetric(horizontal: 55.0),
         child: SizedBox(
          height: 70.0,
          width: 350.0,
          child: Divider(
            height: 5.0,
            thickness: 2.0,
            color:WhiteColor,
          ),
         ),
           ),
        
        Padding(
          padding: const EdgeInsets.only(left:55.0),
          child: Text(TextPath.PriceText, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: GreyColor, fontFamily: CoffeeAssetsPath.Fonts),),
        ),
SizedBox(
  height: 10.0,
),
        Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(TextPath.PriceAmount, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800, color: OrangeColor, fontFamily: CoffeeAssetsPath.Fonts),),
          Padding(
            padding: const EdgeInsets.only(right:55.0),
            child: GestureDetector(
              onTap: () {
                  Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) => OrderScreen())
                            );
              },
              child: Container(
               height: 45.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: OrangeColor,
                      ),
               child: Center(child: Text(TextPath.Buy_Now, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, color: WhiteColor, fontFamily: CoffeeAssetsPath.Fonts),)),
              ),
            ),
          ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        )
        
          ],
        ),
      ),
    );
  }
}