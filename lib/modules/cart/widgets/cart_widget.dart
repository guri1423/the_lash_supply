import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

Widget cartWidget (context,{required List<ProductDetails>? modal}){
  return SingleChildScrollView(
    child: SizedBox(
      height: MediaQuery.of(context).size.height*0.30,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: modal!.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(modal[index].imgCollection[index]),
                    SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          modal[index].name,
                          style: TextStyle(
                            color: Color(0xff333232),
                            fontSize: 18,
                            fontFamily: "Arya",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          modal[index].price,
                          style: TextStyle(
                            color: Color(0xff333232),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Quantity- 2",
                          style: TextStyle(
                            color: Color(0xff333232),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.close),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}