import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/onboarding/pages/register.dart';

import '../../core/utils/colors.dart';

Widget customBackground(context, {required Widget child }  ) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        children: [

          SizedBox(
            height: height*0.50,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: height*0.50,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/register2.png')
                      )
                  ),



                ),
                Container(
                  height: height*0.50,
                  width: width,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
          ),




          Container(
            height: height*0.50,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/register3.png')
                )
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 10),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (Context) => Register()));
              },
            ),
          ),
          SizedBox(height: height*0.2),
          Container(height: 63,
            width: 261,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/register1.png')
                ),
            ),),
          SizedBox(height: 40,),
          Container(
              width: width*0.80,
              height: height*0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.white,
              ),
            child: child,
          ),
          Spacer(),
          RichText(
            text: TextSpan(
              text: 'Need help? ',
              style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w700,fontFamily: "Roboto"),
              children: <TextSpan>[
                TextSpan(text: 'Contact us', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Roboto",
                  color: AppColors.primaryColor,),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.05,),
        ],
      ),

    ],
  );
}

