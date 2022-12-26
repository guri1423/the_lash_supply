import 'package:flutter/material.dart';


Widget customOrder(context,{required Widget child }){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.34,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Color(0xffcacaca), width: 1, ),
      color: Colors.white,
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container( height: 92,
                  width: 119,

                  child: Image.asset('assets/images/Rectangle 33.png')
              ),
              SizedBox(width: 70,),
              Column(

                children: [
                  Text(
                    "Magic Lash",
                    style: TextStyle(
                      color: Color(0xff333232),
                      fontSize: 18,
                      fontFamily: "Arya",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "\$14.00",
                    style: TextStyle(
                      color: Color(0xff333232),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Text(
                        "\$18.00",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff333232),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "20% off",
                        style: TextStyle(
                          color: Color(0xffdd3333),
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 20,),
                  Text(
                    "Order ID: 00254864AS45\n"
                        "Order Date :  Aug 24, 2022",
                    style: TextStyle(
                      color: Color(0xffa0a0a0),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text(
                    "Deliver on Aug 30, 2022",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        SizedBox(height: 10,),


        child,
      ],
    ),
  );
}

