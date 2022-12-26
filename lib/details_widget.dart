import 'package:flutter/material.dart';
import 'modules/category/model/category_modal.dart';
Widget productDetails(context, {required List<CategoryModal>? modal}) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Image.network(modal![0].filename!),
          ),
        ],
      ),
      SizedBox(height: 12),
      Text(
        modal[0].cateName!,
        style: TextStyle(
          color: Color(0xff333232),
          fontSize: 16,
          fontFamily: "Arya",
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(height: 14),
      Text(
        "\$14.00",
        style: TextStyle(
          color: Color(0xff333232),
          fontSize: 16,
        ),
      ),
      SizedBox(height: 19),
      Text(
        "Description:-",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Arya',
          color: Color(0xff2d2d2d),
          fontSize: 20,
        ),
      ),
      SizedBox(height: 5),
      Text(
        modal[0].desc!,
        style: TextStyle(
          color: Color(0xff333232),
          fontSize: 16,
          fontFamily: "Arya",
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}
