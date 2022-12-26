import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

import '../../category/model/category_modal.dart';

Widget categoriesText(context, {required List<ProductDetails>? modal}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          modal![0].cateName,
          style: TextStyle(
            color: Color(0xff333232),
            fontSize: 25,
            fontFamily: "Arya",
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      SizedBox(height: 14),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "\$14.00",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
      /*SizedBox(height: 19),*/
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Text(
          "Description",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Arya',
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      SizedBox(height: 4),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          modal[0].desc,
          style: TextStyle(
            color: Color(0xff333232),
            fontSize: 16,
            fontFamily: "Arya",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}
