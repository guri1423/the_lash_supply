import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/home1.dart';
import 'package:the_lash_supply/modules/cart/pages/cart_page.dart';

Widget favouriteWidget (context){

  return SizedBox(
    height: MediaQuery.of(context).size.height*0.86,
    width: MediaQuery.of(context).size.width,
    child: ListView.separated(
      separatorBuilder: (BuildContext context, int index){
        return Divider();
      },
      itemCount: 6,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height*0.20,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Mask group.png'),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Magic Lash",
                          style: TextStyle(
                            color: Color(0xff333232),
                            fontSize: 18,
                            fontFamily: "Arya",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "\$14.00",
                          style: TextStyle(
                            color: Color(0xff333232),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 120,
                          height: 28,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                width: 34,
                                height: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffcacaca), width: 1, ),
                                  color: Color(0xffeaeaea),
                                ),
                                child: Icon(Icons.remove),

                              ),

                              SizedBox(width: 10.50),
                              Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff2d2d2d),
                                  fontSize: 18,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 10.50),
                              Container(
                                width: 34,
                                height: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffcacaca), width: 1, ),
                                  color: Color(0xffeaeaea),
                                ),
                                child: Icon(Icons.add),


                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 100,
                          height: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffdd3333),
                          ),
                          child: Center(
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
                        )

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.close),
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