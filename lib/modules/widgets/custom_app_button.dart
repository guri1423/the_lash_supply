import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';

Widget appButton(context,fillColor,title,textColor,{required VoidCallback action}){
  return GestureDetector(
    onTap: action,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: fillColor
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 22,
              fontFamily: AppFontsHeading.customFontText,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget textField(context, hintText, textController ){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: textController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
      width: 312,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffb1b1b1), width: 1.20, ),
        color: Colors.white,
      ),
    ),
  );
}
Widget getEmail(context, hintText, textController ){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: textController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
      width: 312,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffb1b1b1), width: 1.20, ),
        color: Colors.white,
      ),
    ),
  );
}
Widget textFieldMessage(context, hintText ){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
      width: 312,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffb1b1b1), width: 1.20, ),
        color: Colors.white,
      ),
    ),
  );
}

