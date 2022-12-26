

import 'package:flutter/material.dart';

List<String> profileList = [
  'Name',
  'Email',
  'Password',
  'Phone No.'
];

List<String> profileListFilled = [
  'User name',
  'username123@gmail.com',
  'username123',
  '1234567890'
];

Widget profileWidget(context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: height*0.50,
    width: width,
    child: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider();
        },
        physics: NeverScrollableScrollPhysics(),
        itemCount: profileList.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 50,
            width: width*0.80,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,  vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(profileList[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ), ),
                      Spacer(),
                      Text(profileListFilled[index],
                          style: TextStyle(
                            color: Color(0xff2d2d2d),
                            fontSize: 16,
                          ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          );
        }),
  );
}

