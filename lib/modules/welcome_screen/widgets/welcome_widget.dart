


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget widgetArea(context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
      alignment: Alignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: height ,
              width: width,
              child: Image.asset('assets/images/01 Splash Screen (1).png')),


        ],
      ),

      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
                height: height*0.70,
                width: width,
                child: Image.asset('assets/images/thelash_logo 1.png',
                fit: BoxFit.fitWidth,)),
          ),
        ],
      )
    ]
  );
}