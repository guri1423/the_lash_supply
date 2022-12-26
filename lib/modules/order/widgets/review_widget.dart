import 'package:flutter/material.dart';

Widget reviewContainer () {
  return Column(
    children: [
      Row(
        children: [
          Text('Rate us:'),
          SizedBox(width: 10,),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star)
        ],
      ),
      SizedBox(height: 10,),
      Container(
          width: 362,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
            border: Border.all(color: Color(0xffcacaca), width: 1, ),
            color: Color(0xffeaeaea),
          ),
          child: Center(
            child: Text(
              "Write Review",
              style: TextStyle(
                color: Color(0xff2d2d2d),
                fontSize: 20,
              ),
            ),
          )
      ),

      Container(
        width: 362,
        height: 142,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xffcacaca), width: 1, ),
          color: Colors.white,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
              hintText: 'Write your review'
          ),
        ),
      ),


    ],
  );
}