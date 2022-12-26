import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import 'package:the_lash_supply/services/api_services.dart';
import '../model/bannerimage.dart';
Widget imageWidget (context,{required List<BannerImage>? model,}) {
  print(model!.length);
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.27,
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true, reverse: true,
              autoPlayInterval: Duration(seconds: 1),
              viewportFraction: 0.99),
          items: model.map((i){
            return Builder(
              builder: (BuildContext context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.network(i.filename,fit: BoxFit.cover,),
                );
              },
            );
          }).toList(),
        ),
      ),
    ],
    ),
  );
}
