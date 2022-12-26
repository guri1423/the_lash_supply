
import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/product_description/pages/product.dart';
import '../../product_description/models/product_details_modal.dart';
Widget productWidget(context,{required List<ProductDetails>? modal}){
  return SizedBox(
    height: MediaQuery.of(context).size.height*0.40,
    width: MediaQuery.of(context).size.width,
    child: GridView.builder(
        itemCount: modal!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 228,
        ), itemBuilder: (BuildContext context, int index){
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDescription(modal: modal[index],)));
        },
        child: Card(
          elevation: 15,
          child: Column(
            children: [
              SizedBox(
                  height: 180,
                  width: double.infinity,
                  child:Image.network(modal[index].imgCollection[1],fit: BoxFit.cover,)),
              SizedBox(height: 9),
              Text(
                modal[index].name,
                style: const TextStyle(
                  color: Color(0xff333232),
                  fontSize: 16,
                  fontFamily: "FiraSans",
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              /*SizedBox(height: 2,),
              Text(
                '\$${modal[index].price!}',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              )*/
            ],
          ),
        ),
      );
    }),
  );
}
/*widget(context,{required List<ProductDetails>? modal}){
  return SizedBox(
    height: MediaQuery.of(context).size.height*0.40,
    width: MediaQuery.of(context).size.width,
    child: GridView.builder(
        itemCount: modal!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
    ), itemBuilder: (BuildContext context, int index){
      return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDescription()));
        },
        child: Container(
          width: 177,
          height: 150,
          child: Column(
            children: [
              SizedBox(
                height: 140,
                  child: Image.network(modal[index].filename!)),
              SizedBox(height: 5,),
              Text(
                modal[index].name!,
                style: TextStyle(
                  color: Color(0xff333232),
                  fontSize: 16,
                  fontFamily: "Arya",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2,),
              Text(
                '\$${modal[index].price!}',
                style: TextStyle(
                  color: Color(0xff333232),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      );
    }),
  );
}*/
