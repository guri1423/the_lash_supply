import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import '../../category/model/category_modal.dart';
Widget categoriesImage(context,{required List<ProductDetails>? modal}){
  return SizedBox(
      width: double.infinity,
      height: 150,
      child: Image.network(modal![0].imgCollection[0]),
  );
}
