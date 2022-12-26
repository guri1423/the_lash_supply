import 'package:flutter/material.dart';

Widget raiseTicketText(context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
    child: Column(
      children: [
        Text(
          "Enter your details for raising tickets",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          "Lorem Ipsum is simply dummy text of the printing .",
          style: TextStyle(
            color: Color(0xff6a6a6a),
            fontSize: 14,
          ),
        )
      ],
    ),
  );
}