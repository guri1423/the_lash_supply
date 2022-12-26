import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

class Product3 extends StatefulWidget {
  ProductDetails modal;
  Product3({Key? key,required this.modal}) : super(key: key);
  @override
  State<Product3> createState() => _Product3State();
}
class _Product3State extends State<Product3> {
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
            Text(
              'Product Details',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.text_snippet_outlined,
              color: Colors.red,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Image.network(widget.modal.imgCollection[0],
           height: 220,
           width: double.infinity,
           fit: BoxFit.cover,
         ),
          Padding(
            padding:  EdgeInsets.only(top:10.0,left: 15),
            child: Text(widget.modal.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 10.0,left: 15),
            child: Text(widget.modal.price,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15,left: 15),
            child:Text('Product Descripition:-',
              style: TextStyle(color: Colors.black,
                  fontSize: 25),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10,left: 15),
            child:Text(widget.modal.desc,
              style: TextStyle(color: Colors.black,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
/*Widget productdetails(context, {required List<ProductDetails>? modal}) {
    return Column(
      children: [
        Text("Product Descripition:",style: TextStyle(color: Colors.black,fontSize: 25),),
        SizedBox(height: 10),
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top:10,left: 15,right: 15),
            child: Text(
              modal![0].desc,
              maxLines: 6,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Arya",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }*/
}
