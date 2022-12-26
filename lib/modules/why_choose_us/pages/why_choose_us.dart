

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';

import '../../widgets/custom_app_bar.dart';

class WhyChoose extends StatefulWidget {
  const WhyChoose({Key? key}) : super(key: key);

  @override
  State<WhyChoose> createState() => _WhyChooseState();
}

class _WhyChooseState extends State<WhyChoose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Why Choose Us'),
      ),
      body: Center(child: Text('Content from Website',
      style: TextStyle(
        fontSize: AppFontsHeading.customFontSize,
        fontWeight: AppFontsHeading.headingFontWeight
      )
      )),
    );
  }
}
