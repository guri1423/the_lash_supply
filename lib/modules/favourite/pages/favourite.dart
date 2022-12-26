

import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/favourite/widgets/favourite_widgets.dart';

import '../../widgets/custom_app_bar.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Favourite'),
      ),
      body: Column(
        children: [
        favouriteWidget(context,)
        ],
      ),

    );
  }
}
