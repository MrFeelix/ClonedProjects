import 'package:coffee_clone/Constants/assets_path.dart';
import 'package:coffee_clone/Constants/color_path.dart';
import 'package:coffee_clone/Constants/textsconstant.dart';
import 'package:coffee_clone/Screens/CappucinoScreen/Cappucino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();


}

class _SecondScreenState extends State<SecondScreen> {
  List<String> items = [
    'Cappuccino',
    'Machiato',
    'Latte',
    'Americano',

  ];

  // TextPath textPath = TextPath();
  
  int _selectedIndex = 0;
  
  
  
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                height: 270.0,
                 color: Color.fromARGB(255, 68, 64, 64),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0, top: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      TextPath.Location,  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: WhiteColor,fontFamily: CoffeeAssetsPath.Fonts),),
                      Text(
                        TextPath.Address, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: WhiteColor, fontFamily: CoffeeAssetsPath.Fonts),),
                    ],
                  ),
               
               Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 50.0),
                  child: Image.asset(CoffeeAssetsPath.ProfileImage),
                ),
               )
                ],
              ),
            ),
              Positioned(
                top: 135.0,
                left: 45.0,
                width: 320,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(17.0),
                        isCollapsed: true,
                        labelText: TextPath.Search,
                        labelStyle: TextStyle(color: GreyColor, fontFamily: CoffeeAssetsPath.Fonts),
                        filled: true,
                        fillColor: BlackishColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(color: Color(0xff313131))
                         
                        ),
                    prefixIcon:Image.asset(CoffeeAssetsPath.SearchImage,
              
                     color:WhiteColor,),
                     suffixIcon: Image.asset(CoffeeAssetsPath.FilterImage)  ),
                      ),
              ),
             
            Padding(
              padding: const EdgeInsets.only(
                top: 215.0,
                left: 50.0),
              child: Container( 
                child:Image.asset(CoffeeAssetsPath.PromoImage),
              ),
            ),
           
              ],
           ),
        SizedBox(
          height: 25.0,
        ),
        
         Padding(
           padding: const EdgeInsets.only( left: 43.0),
           child: SizedBox(
                height: 60.0,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index){
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          margin: EdgeInsets.all(5),
                          width: 110.0,
                          height: 45.0,
                          decoration: BoxDecoration(color:current==index? OrangeColor: WhitishColor,
                          borderRadius: current==index? BorderRadius.circular(15.0):BorderRadius.circular(10),
                         
                          ),
                          child: Center(child: Text(items[index], style: TextStyle(fontWeight: FontWeight.w500, fontFamily: CoffeeAssetsPath.Fonts,
                          color: current==index? WhiteColor : BlackColor),
                          ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
         ),
            SizedBox(
              height: 15.0,
      
            ),
                
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:50.0),
                     child: Wrap(
                       spacing: 10.0,
                        runSpacing: 10.0,
                     children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) =>Cappucciano())
                          );
                        },
                        child: CoffDisplay()),
                     
                     
                        GestureDetector(
                         onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) =>Cappucciano())
                          );
                        },
                        child: CoffDisplay2()),
                   
                      GestureDetector(
                         onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) =>Cappucciano())
                          );
                        },
                        child: CoffDisplay3()),
                    
                      GestureDetector(
                         onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) =>Cappucciano())
                          );
                        },
                        child: CoffDisplay4()),
                     ],
                     ),
                   ),
         
          SizedBox(
              height: 15.0,
      
            ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:50.0),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       ],
                     ),
                   ),
         SizedBox(
          height: 30.0,
         )
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              'assets/images/Home.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Heart icon.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Bag 2.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Notification.png'),
            label: '',
          ),
        ],
      ),
    );
  }
}

class CoffDisplay4 extends StatelessWidget {
  const CoffDisplay4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         height: 245.0,
         width: 150.0,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20.0),
         color: WhiteColor,
         ),
        
         child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(top:5.0),
             child: Image.asset(CoffeeAssetsPath.CappucinoImage2),
           ),
         
         Padding(
           padding: const EdgeInsets.only(right:10.0, left:10.0, top: 5.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 TextPath.Cappucciano, 
                 
                 style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackColor),),
                 
                 SizedBox(
                   height: 5.0,
                 ),
                
                 Text(
                   TextPath.With_Chocolate,
                   style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color:GreyColor, fontFamily: CoffeeAssetsPath.Fonts),),
            
             Padding(
               padding: const EdgeInsets.only(top:12.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text( 
                     TextPath.PriceAmount, 
                     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color:GreenColor, fontFamily: CoffeeAssetsPath.Fonts),),
                    
                      Image.asset(CoffeeAssetsPath.PlusImage)
                 ],
               ),
                 
             )
             ],
           ),
         ),
     ],
         ),
       
       
        );
  }
}

class CoffDisplay3 extends StatelessWidget {
  const CoffDisplay3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 245.0,
       width: 150.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20.0),
       color:WhiteColor,
       ),
      
       child: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top:5.0),
           child: Image.asset(CoffeeAssetsPath.CappucinoImage1),
         ),
       
       Padding(
         padding: const EdgeInsets.only(right:10.0, left:10.0, top: 5.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               TextPath.Cappucciano, 
               
               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackColor),),
               
               SizedBox(
                 height: 5.0,
               ),
              
               Text(
                 TextPath.With_Chocolate,
                 style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: GreyColor, fontFamily: CoffeeAssetsPath.Fonts),),
          
           Padding(
             padding: const EdgeInsets.only(top:12.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text( 
                   TextPath.PriceAmount, 
                   style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: GreenColor, fontFamily: CoffeeAssetsPath.Fonts),),
                  
                    Image.asset(CoffeeAssetsPath.PlusImage)
               ],
             ),
               
           )
        ],
                          ),
                       ),
                    ],
                ),
             );
  }
}

class CoffDisplay2 extends StatelessWidget {
  const CoffDisplay2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
         height: 245.0,
         width: 150.0,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20.0),
         color: WhiteColor,
         ),
        
         child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(top:5.0),
             child: Image.asset(CoffeeAssetsPath.CappucinoImage2),
           ),
         
         Padding(
           padding: const EdgeInsets.only(right:10.0, left:10.0, top: 5.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 TextPath.Cappucciano, 
                 
                 style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: BlackColor, fontFamily: CoffeeAssetsPath.Fonts),),
                 
                 SizedBox(
                   height: 5.0,
                 ),
                
                 Text(
                   TextPath.With_Chocolate,
                   style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: GreyColor, fontFamily: CoffeeAssetsPath.Fonts),),
            
             Padding(
               padding: const EdgeInsets.only(top:12.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text( 
                     TextPath.PriceAmount, 
                     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: GreenColor, fontFamily: CoffeeAssetsPath.Fonts),),
                    
                      Image.asset(CoffeeAssetsPath.PlusImage)
                 ],
               ),
                 
             )
             ],
           ),
         ),
     ],
         ),
       
       
        );
  }
}

class CoffDisplay extends StatelessWidget {
  const CoffDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 245.0,
       width: 150.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20.0),
       color: WhiteColor,
       ),
      
       child: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top:5.0),
           child: Image.asset(CoffeeAssetsPath.CappucinoImage1),
         ),
       
       Padding(
         padding: const EdgeInsets.only(right:10.0, left:10.0, top: 5.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               TextPath.Cappucciano, 
               
               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: CoffeeAssetsPath.Fonts, color: BlackColor),),
               
               SizedBox(
                 height: 5.0,
               ),
              
               Text(
                 TextPath.With_Chocolate,
                 style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color:GreyColor, fontFamily: CoffeeAssetsPath.Fonts),),
          
           Padding(
             padding: const EdgeInsets.only(top:12.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text( 
                   TextPath.PriceAmount, 
                   style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color:GreenColor, fontFamily: CoffeeAssetsPath.Fonts),),
                  
                    Image.asset(CoffeeAssetsPath.PlusImage)
               ],
             ),
               
           )
        ],
                          ),
                       ),
                    ],
                ),
             );
  }
}