

import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_app_button.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _firstNameController=TextEditingController();
  final TextEditingController _lastNameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Contact Us'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            SizedBox(height: 10,),
            textField(context, 'First Name',_firstNameController),
            SizedBox(height: 10,),
            textField(context, 'Last Name',_lastNameController),
            SizedBox(height: 10,),
            textField(context, 'Email',_emailController),
            SizedBox(height: 10,),
            textFieldMessage(context, 'Message'),
            SizedBox(height: 50,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.86,
                child: appButton(context, AppColors.primaryColor, 'Send', AppColors.textColor, action: (){}))
          ],
        ),
      ),

    );
  }
}
