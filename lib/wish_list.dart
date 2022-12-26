import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);
  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
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
              'Favorite',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.text_snippet_outlined,
              color: Colors.red,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 190,
            /*width: MediaQuery.of(context).size.width,*/
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
       /*           crossAxisAlignment: CrossAxisAlignment.start,*/
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 18.0, left: 9),
                      child: Image.asset('assets/images/Rectangle 33.png'),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 18, left: 5),
                      child: Text(
                        'Magic Lash',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8,top: 3),
                      child: Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        '14.00',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 65, vertical: 25),
                      child: ElevatedButton(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "FiraSans"),
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
