import 'package:coffee_clone/Constants/assets_path.dart';
import 'package:coffee_clone/Constants/color_path.dart';
import 'package:coffee_clone/Constants/textsconstant.dart';
import 'package:flutter/material.dart';
import 'package:coffee_clone/Screens/SecondScreen/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration:  BoxDecoration(
            color: BlackColor
          ),          
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Image.asset(CoffeeAssetsPath.BackgroundImage,
              ),
            ),
         Positioned(
          bottom: 0,
          left: 10.0,
          right: 10.0,
           child: SizedBox(
            width: size.width,
             child: Column(
               children: [
                SizedBox(
                height: 80.0,
               ),
                  SizedBox(width: 260,
                   child: Text(
                    
                               TextPath.So_Good,style: TextStyle(color: WhiteColor, fontSize: 30.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts,
                               ),
                         textAlign: TextAlign.center, 
                              ),
                 ),
                
                const SizedBox(
                  height: 20.0,
                ),

                  SizedBox(
                  width: 250.0,
                   child: Text(
                    TextPath.BestGrain,
                    style: TextStyle(
                      color: WhiteColor , 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.w400, 
                      fontFamily: CoffeeAssetsPath.Fonts
                    ),
                   textAlign: TextAlign.center,),
                 ),
                   SizedBox(
                    height: 15.0,
                  ),
                     
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) => const SecondScreen())
                          );
                        },
                        child: Container(
                                alignment: Alignment.bottomCenter,
                                height: 54.0,
                                width: 300.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:WhiteColor,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                  padding: const EdgeInsets.only( left: 20.0, bottom: 8.0),
                                  child: Image.asset(CoffeeAssetsPath.GoogleImage),
                            ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                                  child: Text(TextPath.Continue, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,fontFamily: CoffeeAssetsPath.Fonts
                         )
                           ),
                             ),
                                ],
                             
                              ),
                             
                               
                               ),
                      )
               , SizedBox(
                    height: 5.0,
                  ),
               ],
             ),
           ),
         ),
    
         
          ],
        ),
           ),
      );
    
  }
}
  