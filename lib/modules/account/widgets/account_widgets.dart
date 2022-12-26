

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/contact_us/pages/contact.dart';
import 'package:the_lash_supply/modules/download_catalogue/pages/catalogue.dart';
import 'package:the_lash_supply/modules/favourite/pages/favourite.dart';
import 'package:the_lash_supply/modules/product_description/pages/product.dart';
import 'package:the_lash_supply/modules/profile/pages/profile.dart';
import 'package:the_lash_supply/modules/refund_exchange/pages/refund.dart';
import 'package:the_lash_supply/modules/why_choose_us/pages/why_choose_us.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

List<String> buttonList = [
  'My Profile',
  'Favorite',
  'Contact Us',
  'Why Choose Us',
  'Download Catalogue',
  'Return-Refund-Exchange',
  'Logout',
  'Delete Account'
];

List<Icon> iconList = [
  Icon(Icons.account_circle),
  Icon(Icons.favorite_border),
  Icon(Icons.phone),
  Icon(Icons.question_mark),
  Icon(Icons.download_rounded),
  Icon(Icons.request_page),
  Icon(Icons.logout),
  Icon(Icons.delete_forever_outlined),


];


Widget customBackground1(context, {required Widget child }  ) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        children: [

          SizedBox(
            height: height*0.27,
            width: width,
            child: Container(
              height: height*0.37,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/background1.png')
                  )
              ),



            ),
          ),




          Container(
            height: height*0.476,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Container(
            width: width*0.80,
            height: height*0.10,
            child: Row(

              children: [
                Icon(Icons.account_circle,
                  color: Colors.white,
                  size: 70,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hey Jhon Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),),
                    Text('jhondoe123@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

          Container(
            width: width*0.80,
            height: height*0.60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.white,
            ),
            child: child,

          ),













        ],
      ),

    ],
  );
}

Widget accountList(context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return ListView.separated(
      separatorBuilder: (BuildContext context, int index){
       return Divider();
      },
      physics: NeverScrollableScrollPhysics(),
      itemCount: iconList.length,
      itemBuilder: (BuildContext context, int index){
    return Container(
      height: 50,
      width: width*0.80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,  vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                navigation(index, context);
              },
              child: Row(
                children: [
                  iconList[index],
                  SizedBox(width: 30,),
                  Text(buttonList[index],
                    style: TextStyle(
                      color: Color(0xff9c9c9c),
                      fontSize: 18,
                    ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  });
}

dynamic navigation(index,context){
  switch(index){
    case 0:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
    case 1:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite()));
    case 2:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
    case 3:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>WhyChoose()));
    case 4:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>Catalogue()));
    case 5:
      return Navigator.push(context, MaterialPageRoute(builder: (context)=>Refund()));
    case 6:
      return logout(context, 'Logout',);
    case 7:
      return logout(context, 'Delete',);
  }

}

Future<void> logout(context,titleText){
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext dialogContext) {
      return Center(
        child: AlertDialog(

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Are you Sure?'),
            ],
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Do you really want to $titleText'),
            ],
          ),
          actions: <Widget>[
            SizedBox(
                height: 40,
                child: appButton(context, AppColors.primaryColor, '$titleText', AppColors.textColor, action: (){}))
          ],
        ),
      );
    },
  );
}



