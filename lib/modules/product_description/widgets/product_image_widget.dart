import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/home1.dart';
import 'package:the_lash_supply/modules/cart/pages/cart_page.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
Widget productImage(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        height: 40,
        child: ElevatedButton(
          child: Text('Add to Cart'),
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.red,
            //side: BorderSide(color: Colors.white, width: 20),
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "FiraSans",
                fontStyle: FontStyle.normal),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            shadowColor: Colors.lightBlue,
          ),
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            final bool? isLoggedIn = prefs.getBool('skipButton');
            final bool? isEmail = prefs.getBool('Add to CartButton');
            print(!isLoggedIn!);
            if (!isLoggedIn) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartPage()));
            } else {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home1()));
            }
          },
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              child: Text('Add to Cart'),
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.red,
                //side: BorderSide(color: Colors.white, width: 20),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "FiraSans",
                    fontStyle: FontStyle.normal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.lightBlue,
              ),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final bool? isLoggedIn = prefs.getBool('skipButton');
                final bool? isEmail = prefs.getBool('Add to CartButton');
                print(!isLoggedIn!);
                if (isLoggedIn) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                } else {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home1()));
                }
              },
            ),
          ),
        ],
      ),
    ],
  );

}
