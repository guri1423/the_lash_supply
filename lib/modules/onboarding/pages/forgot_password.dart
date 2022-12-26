

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';
import 'package:the_lash_supply/modules/onboarding/pages/login.dart';
import 'package:the_lash_supply/modules/onboarding/pages/verify_otp.dart';
import 'package:the_lash_supply/modules/widgets/custom_background.dart';

import '../../../core/utils/colors.dart';
import '../../widgets/custom_app_button.dart';
import '../repository/auth_repositry.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController=TextEditingController();
  final AuthRepository authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: customBackground(context, child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 25,
                    fontFamily: AppFontsHeading.customFontHeading,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Enter your Email Id and help us to verify your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff838383),
                    fontSize: 12,
                    fontFamily: AppFontsHeading.customFontText,
                  ),
                ),
              ],
            ),


            textField(context,'Email',_emailController),

            appButton(context, AppColors.primaryColor,
                'Send OTP',
                AppColors.textColor,
                action: () async {
               bool?  response = await authRepository.forgotPass(_emailController.text);
               debugPrint(response.toString());
               if(response==true){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                 if(response==false){
                 }
               }
            }),
          ],
        ))
    );
  }
}
