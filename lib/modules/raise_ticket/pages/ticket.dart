

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/raise_ticket/widgets/text_widget.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_bar.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

class RaiseTicket extends StatefulWidget {
  const RaiseTicket({Key? key}) : super(key: key);

  @override
  State<RaiseTicket> createState() => _RaiseTicketState();
}

class _RaiseTicketState extends State<RaiseTicket> {
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _phoneNoNameController=TextEditingController();
  final TextEditingController _orderIdNameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Raise Ticket'),
      ),

      body: Column(
        children: [
          raiseTicketText(context),
          SizedBox(height: 10,),
          textField(context, 'Enter Your Name',_nameController),
          SizedBox(height: 10,),
          textField(context, 'Enter Your Email',_emailController),
          SizedBox(height: 10,),
          textField(context, 'Enter Your Phone No',_phoneNoNameController),
          SizedBox(height: 10,),
          textField(context, 'Enter Your Order Id',_orderIdNameController),
          SizedBox(height: 10,),
          textFieldMessage(context, 'Enter Your Message'),
          SizedBox(height: 50,),
          appButton(context, AppColors.blackContainer, 'Raise Ticket', AppColors.textColor, action: (){})


        ],
      ),
    );
  }
}
