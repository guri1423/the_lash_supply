
import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';

Widget appBar (context, heading){
  return Text(heading,
    style: TextStyle(
      color: AppColors.headingColor,
      fontSize: AppFontsHeading.customFontSize-6,
      fontFamily: AppFontsHeading.customFontHeading,
      fontWeight: AppFontsHeading.headingFontWeight,
    ),);
}