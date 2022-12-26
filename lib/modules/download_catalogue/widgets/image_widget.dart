import 'package:flutter/material.dart';

Widget imageWidgetCatalogue(context){
  return SizedBox(
    height: MediaQuery.of(context).size.height*0.75,
    width: MediaQuery.of(context).size.width,
    child: Image.asset('assets/images/catalogue.png'),

  );
}