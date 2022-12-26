

import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/onboarding/pages/login.dart';
import 'package:the_lash_supply/modules/widgets/custom_background.dart';

import '../../../core/utils/colors.dart';
import '../../widgets/custom_app_button.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(

        body: customBackground(context,  child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            textField(context,'New Password',_newPassController ),
            textField(context,'Confirm Password',_confirmPassController ),
            appButton(context, AppColors.primaryColor, 'Change Password', AppColors.textColor, action: () {  }),


          ],
        ))
    );
  }
}
