


import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/order/widgets/order_widget.dart';
import 'package:the_lash_supply/modules/order/widgets/review_widget.dart';
import 'package:the_lash_supply/modules/raise_ticket/pages/ticket.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

import '../../widgets/custom_app_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'My Order'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customOrder(context, child: SizedBox(
               width: MediaQuery.of(context).size.width,
                child: appButton(context, AppColors.primaryColor, 'Trace Order', AppColors.textColor, action: (){}))),
            SizedBox(height: 15,),

           reviewContainer(),

            SizedBox(height: 15,),

            appButton(context, AppColors.headingColor, 'Raise Ticket', AppColors.textColor, action: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RaiseTicket()));})

          ],
        ),
      ),



    );
  }
}
