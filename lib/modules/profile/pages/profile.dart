

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/profile/widgets/profile_pic.dart';
import 'package:the_lash_supply/modules/profile/widgets/profile_widgets.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';
import '../../widgets/custom_app_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'My Profile'),
      ),

      body: Column(
      children: [
       profilePic(context),
        profileWidget(context),
        appButton(context, AppColors.primaryColor, 'Change Password', AppColors.textColor, action: (){})
      ],
    ),
    );
  }
}
