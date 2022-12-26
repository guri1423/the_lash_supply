

import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/download_catalogue/widgets/image_widget.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_bar.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       iconTheme: IconThemeData(
         color: Color(0xff272727),
       ),
       backgroundColor: Colors.white,
       centerTitle: false,
       title: appBar(context, 'Catalogue'),
     ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Expanded(child: imageWidgetCatalogue(context)),
            appButton(context, AppColors.blackContainer, 'View Catalogue', AppColors.textColor, action: (){}),
            SizedBox(height: 10,),
            appButton(context, AppColors.primaryColor, 'Download Catalogue', AppColors.textColor, action: (){})
          ],
        ),
      )


    );
  }
}
