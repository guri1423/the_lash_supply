import 'package:flutter/material.dart';
Widget cartDetails(context){
  return Column(
    children: [
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
            border: Border.all(color: Color(0xffcacaca), width: 1,),
            color: Color(0xffeaeaea),
          ),
          child: Center(
            child: Text(
              "Order Details",
              style: TextStyle(
                color: Color(0xff2d2d2d),
                fontSize: 20,
              ),
            ),
          )
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 142,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xffcacaca), width: 1, ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    "Product Cart Total",
                    style: TextStyle(
                      color: Color(0xff8a8a8a),
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$ 18.00",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff8a8a8a),
                      fontSize: 14,
                    ),
                  )

                ],
              ),
              Row(
                children: [
                  Text(
                    "Offer Discount",
                    style: TextStyle(
                      color: Color(0xff8a8a8a),
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$ 6.00",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff8a8a8a),
                      fontSize: 14,
                    ),
                  )

                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Text(
                    "Total Payable",
                    style: TextStyle(
                      color: Color(0xff333232),
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$ 12.00",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff333232),
                      fontSize: 17,
                    ),
                  )

                ],
              ),
            ],
          ),
        )
      ),
    ],
  );
}
