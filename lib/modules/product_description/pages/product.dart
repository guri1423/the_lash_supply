import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:the_lash_supply/modules/cart/model/add_to_cart1.dart';
import 'package:the_lash_supply/modules/cart/pages/cart_page.dart';
import 'package:the_lash_supply/modules/favourite/pages/favourite.dart';
import 'package:the_lash_supply/modules/product_description/widgets/product_image_widget.dart';
import 'package:the_lash_supply/modules/product_description/widgets/product_text_widget.dart';
import 'package:the_lash_supply/product_des2.dart';
import 'package:the_lash_supply/services/apiservices2.dart';
import 'package:the_lash_supply/wish_list.dart';
import '../../../core/utils/colors.dart';
import '../../../home1.dart';
import 'package:http/http.dart' as http;
import '../../../product_details.dart';
import '../../home/bloc/product_bloc/product_bloc.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_app_button.dart';
import '../models/product_details_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductDescription extends StatefulWidget {
  ProductDetails modal;
  ProductDescription({Key? key,required this.modal}) : super(key: key);
  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}
class _ProductDescriptionState extends State<ProductDescription> {
  /*postData(AddCart1 model){
    var response = http.post(
      Uri.parse("http://3.114.92.202:4003/api/AddCart"),
      body: {

      }
    );
    print(response.body);
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff272727),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            children: [
              appBar(context, 'Flat Lash'),
              const Spacer(),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.favorite_border,
                color: AppColors.primaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.text_snippet_outlined,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
        body: homeInitial(context, modal: widget.modal));
  }
}

Widget homeInitial(context, {required ProductDetails modal}) {
  return SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5),
      /*    productText(context, modal: modal),*/
          Product2(modal: modal,),
          Padding(padding: EdgeInsets.symmetric(vertical: 28),
            child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: ElevatedButton(
                            child: Text('Add to Cart'),
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.red,
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
                              String _email = (prefs.getString('email')??'');
                              print(!isLoggedIn!);
                              if (!isLoggedIn) {
                                debugPrint(modal.name);
                                debugPrint(_email);
                                debugPrint(modal.price);
                                debugPrint(modal.attributeType1[0]);
                                debugPrint(modal.attributeType2[0]);
                               bool? status = await  postAllProducts(AddCart1(
                                    pname: modal.name,
                                    email: _email,
                                    price: modal.price,
                                    qty: '2',
                                   attributeType1: modal.attributeType1[0],
                                   attributeType2: modal.attributeType2[0],
                                   totalPrice:'90'));
                               if(status!){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => CartPage()));
                               }else{
                                 print('Data is not added');
                               }
                              } else {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Home1()));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            child: Text('Save to wishlist'),
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
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Favourite()));
                              }
                            //},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          ),
        ],
      ),
  );
}
