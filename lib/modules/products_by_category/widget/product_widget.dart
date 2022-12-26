import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/categories_description/pages/product_categories_page.dart';
import 'package:the_lash_supply/modules/category/model/category_modal.dart';
import 'package:the_lash_supply/modules/favourite/pages/favourite.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import 'package:the_lash_supply/details_widget.dart';

Widget productsByCat(context, text, {required List<ProductDetails>? modal}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.86,
    width: MediaQuery.of(context).size.width,
    child: ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: modal!.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*  Image.asset('assets/images/Mask group.png'),*/
                    Image.network(modal[index].imgCollection[0],height: 135,),
                    SizedBox(
                /*      height: MediaQuery.of(context).size.height * 0.15,*/
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            modal[index].name,
                            style: const TextStyle(
                              color: Color(0xff333232),
                              fontSize: 18,
                              fontFamily: "Arya",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           Text(
                            modal[index].price,
                            style: TextStyle(
                              color: Color(0xff333232),
                              fontSize: 16,
                            ),
                          ),
                          ElevatedButton(
                            child: Text(text),
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Product3(modal: modal[index],)));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
/*MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CategoriesPage()));
                              },*/
