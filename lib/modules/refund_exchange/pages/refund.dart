


import 'package:flutter/material.dart';

import '../../../core/utils/fonts.dart';
import '../../widgets/custom_app_bar.dart';

class Refund extends StatefulWidget {
  const Refund({Key? key}) : super(key: key);

  @override
  State<Refund> createState() => _RefundState();
}

class _RefundState extends State<Refund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
      iconTheme: IconThemeData(
        color: Color(0xff272727),
      ),
      backgroundColor: Colors.white,
      centerTitle: false,
      title: appBar(context, 'Return-Refund-Exchange'),
    ),
      body: Center(child: Text('Content from Website',
          style: TextStyle(
              fontSize:   AppFontsHeading.customFontSize,
              fontWeight: AppFontsHeading.headingFontWeight
          )
      )),
    );
  }
}
