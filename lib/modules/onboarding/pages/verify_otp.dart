


import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/onboarding/pages/create_password.dart';

import '../../../core/utils/colors.dart';
import '../../widgets/custom_app_button.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final TextEditingController _otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/register2.png')
                      )
                  ),



                ),



                Container(
                  height: MediaQuery.of(context).size.height*0.50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/register3.png')
                      )
                  ),
                ),


              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height*0.2),
                Container(height: 63,
                  width: 261,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/register1.png')
                      )
                  ),),

                SizedBox(height: 40,),

                Container(
                    width: MediaQuery.of(context).size.width*0.80,
                    height: MediaQuery.of(context).size.height*0.40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Column(
                          children: [
                            Text(
                              "Verify Your Email",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 25,
                                fontFamily: "Arya",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Please enter the 6 digit code sent to you at\nUsername123@gmail.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff838383),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        textField(context,'Enter OTP',_otpController),
                        appButton(context, AppColors.primaryColor, 'Send OTP', AppColors.textColor, action: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> CreatePassword())); })
                      ],
                    )
                ),

                Spacer(),


                RichText(
                  text: TextSpan(
                    text: 'Need help? ',
                    style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w700,fontFamily: "Roboto"),
                    children: <TextSpan>[
                      TextSpan(text: 'Contact us', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Roboto",
                        color: AppColors.primaryColor,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.05,),



              ],
            ),
          ],
        )
    );
  }
}
