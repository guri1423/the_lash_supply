
import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';
import 'package:the_lash_supply/modules/onboarding/pages/login.dart';
import 'package:the_lash_supply/modules/onboarding/pages/register.dart';
import 'package:the_lash_supply/modules/onboarding/widgets/image_banners.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        padding: const EdgeInsets.only(top: 60, bottom: 40, ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           textArea(context),
            Image.asset('assets/images/Group 11.png'),
            // bannerArea(context),
            // SizedBox(height: 20),
            // bannerArea1(context),
            SizedBox(height: 20),
            appButton(context, AppColors.primaryColor , 'REGISTER', Colors.white, action: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>  Register())); }),
            SizedBox(height: 20),
            appButton(context, Color(0xffffe9ea), 'LOGIN', Colors.black, action: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>  Login())); }),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }

}


Widget textArea(context){
  return Column(
    children: [
      Text(
        "THE LASH SUPPLY",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontFamily: AppFontsHeading.customFontHeading,
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(height: 30),
      Text(
        "The Lash Supply is one of the top eyelash\nManufacturers in Vietnam and the biggest eyelash\nsupply store in the U.S.A",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: AppFontsHeading.customFontText
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}