

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/pages/bottom_navigation.dart';

import 'package:the_lash_supply/modules/onboarding/bloc/login/login_bloc.dart';
import 'package:the_lash_supply/modules/onboarding/models/log_in_modal/log_in_modal.dart';
import 'package:the_lash_supply/modules/onboarding/pages/forgot_password.dart';
import 'package:the_lash_supply/modules/widgets/custom_background.dart';

import '../../../core/utils/colors.dart';
import '../../widgets/custom_app_button.dart';

class Login extends StatefulWidget {
   Login({Key? key,}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {

  final LoginBloc loginBloc = LoginBloc();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (_) => loginBloc,
        child: BlocListener<LoginBloc, LoginState>(
               listener: (context, state) {
           if (state is LoginSuccess){
             saveEmail(_emailController);
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomNavigation()), (route) => false);
           }
           },
         child: BlocBuilder<LoginBloc, LoginState>(
          builder: (BuildContext context, state) {
            if(state is LoginInitial){
              return initialArea(context,_emailController);
            }
            if(state is LoginLoading){
             return Center(child: CircularProgressIndicator());
            }
            if(state is LoginFail){
              return Center(child: Text('Error ${state.errorMessage}'));
            }
            return Container();
          },),
        ),
      ),
    );
  }
  void saveEmail(TextEditingController editingController) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', editingController.text);
    debugPrint(_emailController.text);
  }
 /* saveEmail(String email)async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(email, _emailController.text);
    debugPrint(_emailController.text);
  }*/
}

Widget initialArea(context,_emailController){
  final TextEditingController _passController = TextEditingController();
  return customBackground(context, child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      textField(context, 'Email', _emailController),

      textField(context,'Password',_passController),

      appButton(context, AppColors.primaryColor, 'LOGIN', AppColors.textColor,
          action: () {
        BlocProvider.of<LoginBloc>(context).add(ButtonTapEvent(LoginRequestModal(
          email:  _emailController.text,
          password: _passController.text
        )));
      }),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ));


}
