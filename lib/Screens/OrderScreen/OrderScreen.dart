import 'package:coffee_clone/Constants/assets_path.dart';
import 'package:coffee_clone/Constants/color_path.dart';
import 'package:coffee_clone/Screens/CappucinoScreen/Cappucino.dart';
import 'package:coffee_clone/Constants/textsconstant.dart';

import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 25,
            left: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Cappucciano()));
                        },
                        child: Image.asset(CoffeeAssetsPath.LeftArrowImage)),
                    const Spacer(),
                    Text(
                      TextPath.Order,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: BlackishColor2),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 321,
                  height: 48,
                  decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: PaleAshColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 154,
                        height: 40,
                        decoration: BoxDecoration(
                          color: OrangeColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            TextPath.Deliver,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: CoffeeAssetsPath.Fonts,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Center(
                          child: Text(
                            TextPath.Pick_Up,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: CoffeeAssetsPath.Fonts),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15, left: 20),
                child: Text(
                  TextPath.Delivery_Address,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: CoffeeAssetsPath.Fonts,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(TextPath.Sutoya
                  ,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: CoffeeAssetsPath.Fonts,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20.0),
                child: Text(
                 TextPath.Sutoya_Address,
                  style: TextStyle(
                    color: AshColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: CoffeeAssetsPath.Fonts,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color:PaleAshColor)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                children: [
                                  Image.asset(CoffeeAssetsPath.EditImage),
                                  Center(
                                    child: Text(
                                      TextPath.Edit,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: CoffeeAssetsPath.Fonts,
                                          color: DeepishBlack),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: PaleAshColor)),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(CoffeeAssetsPath.NoteImage),
                            Text(
                              TextPath.Note,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: CoffeeAssetsPath.Fonts,
                                  color: DeepishBlack),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(CoffeeAssetsPath.OrderCappucino),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          TextPath.Cappucciano,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: CoffeeAssetsPath.Fonts,
                            color: BlackishColor2
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          TextPath.With_Chocolate,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: GreyColor,
                              fontFamily: CoffeeAssetsPath.Fonts),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 75.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              count = count - 1;
                            });
                          },
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color:PaleAshColor)),
                              child: Center(
                                  child: Icon(
                                Icons.remove,
                                size: 18,
                              ))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$count",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count = count + 1;
                          });
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color:PaleAshColor)),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 18,
                            ))),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 4,
                  width: 315,
                  child: Divider(
                    height: 4,
                    thickness: 2,
                    color: WhitishColor3,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      width: 300,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WhitishColor4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset(CoffeeAssetsPath.OrderCappucino),
                            ],
                          ),
                          Text(
                            TextPath.Discount,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: CoffeeAssetsPath.Fonts,
                                color: BlackishColor2),
                          ),
                          Image.asset(CoffeeAssetsPath.DiscountImage),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  TextPath.PaymentSum,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: CoffeeAssetsPath.Fonts,
                      color: BlackishColor2),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      TextPath.PriceText,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: CoffeeAssetsPath.Fonts,
                        color: BlackishColor2
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                     TextPath.PriceAmount,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: CoffeeAssetsPath.Fonts,
                        color: BlackishColor2
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      TextPath.Delivery_Fee,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: CoffeeAssetsPath.Fonts,
                        color: BlackishColor2
                      ),
                    ),
                  ),
                  Text(
                    TextPath.Onedolls,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: CoffeeAssetsPath.Fonts,
                      color: BlackishColor2
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                    height: 10,
                    width: 315,
                    child: Divider(thickness: 2, color: WhitishColor4)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset(CoffeeAssetsPath.CashImage),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 51,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:OrangeColor,
                        ),
                        child: Center(
                          child: Text(
                            TextPath.Cash,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: WhiteColor,
                                fontFamily: CoffeeAssetsPath.Fonts),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        TextPath.Fivedolls,
                        style: TextStyle(
                          fontFamily: CoffeeAssetsPath.Fonts,
                          fontWeight: FontWeight.w600,
                          color: BlackishColor2,
                          fontSize: 14.0
                        ),
                      ),
                    ],
                  ),
                  Image.asset(CoffeeAssetsPath.CircleImage)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 315,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:OrangeColor),
                  child: Center(
                    child: Text(
                      TextPath.Order,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color:WhiteColor,
                          fontSize: 16,
                          fontFamily: CoffeeAssetsPath.Fonts),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
