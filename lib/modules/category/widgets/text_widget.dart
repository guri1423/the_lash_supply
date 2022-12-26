import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';

Widget textWidget(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Container(
          padding: EdgeInsets.only(right: 15),
          alignment: Alignment.center,
          child: Text(
            "CATEGORIES",
            style: TextStyle(
              color: AppColors.blackContainer,
              fontSize: AppFontsHeading.customFontSize,
              fontFamily: AppFontsHeading.customFontText,
              fontWeight: AppFontsHeading.headingFontWeight,
            ),
          ),
        ),
    ],
  );
}