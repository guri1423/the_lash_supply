import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/cart/model/add_to_cart1.dart';
import 'package:the_lash_supply/modules/cart/model/add_to_cart_model.dart';
import 'package:the_lash_supply/modules/cart/widgets/cart_details.dart';
import 'package:the_lash_supply/modules/cart/widgets/cart_widget.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';
import 'package:http/http.dart' as http;
/*String _email= saveEmail();*/
String _email = '';
class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = (prefs.getString('email')??'');
      debugPrint(_email);
    });
  }

  Future<Cart> getCartData() async {
    final email = '_email';
    http.Response response;
    String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTYyNGI4N2Y3YzdkMzk2ODhiMDEwNDNmMWMxMTQ2M2Y5ZmIzOWU5ZGEwNjM3YzIxMmYwNThlZTMyNzE0NGU5MzBkNGIxOWIwNTVmZDM4MTAiLCJpYXQiOjE2NjY4NTE0OTAuNTc4MjY4LCJuYmYiOjE2NjY4NTE0OTAuNTc4MjcxLCJleHAiOjE2OTgzODc0OTAuNTc1OTAxLCJzdWIiOiIyNiIsInNjb3BlcyI6W119.CsnH3UcsDzFWIlc5Ya6kENJX9YZN4Ae-f6YtOg5dcLnIwf5vkzmYOJfH4WKiiU-yP9WDaYSi2kJGhAMaLlV-aKf3BnfLKgGetEiTab47cxWWgkN8DiGDJYL9GKdHoUP9gSuPAV-hlBa15SmxIP08zeJ_3jpHFArKG5sWwRFDbjlEzbHiRYRqoJeI9WcxUVWwTHj9CmgcGVuq1-57RylBNwM_kNSbWMxuwy8mrvKLJeUR641gclVq0WuCwIPFaIZxZqJnnrcqIlocFtSr8pk6zRj1-hgYn3t-Xfgd6GcvX9PC-JzRCJJeQLkYRuCS1o7QwEeoYwicHnvc7njT03TwWdw_mxy7TFef-lD1c5KRXxXNZFXGv4n5WgJlNnDii0pCKA7GtzQnWhlD1Jr5GTZUHPCkrBoS3gsljTSzaqAJryTAnrqV2AP3gdd_oFd9NxpGE-ON0HyveK1HaG9p_idRzD_oZ_tqORZINp4O6X-We06-0glvbJLocDGOc-L5mGP5_gwmt_hwT2xZFt--veodAdcpV2-qymTW1dL20ZiBhhdL6F6WC_F1kb8AfsJiW5IuBApVkqjQHZmai1Biw0FYK5MvW8fSLQIKVnsplFAItDlKzZzoZP4UdWV_IsFWUGOKIZuZNh2QKplsupcOZJ82MID8esJRcvNl4FcubW0gEPE";
    response = await http.get(
        Uri.parse(Uri.encodeFull('http://3.114.92.202:4003/Cart/$email')),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer $token"
        });
    debugPrint("api hit");
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return Cart.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'Cart',
              style: TextStyle(
                color: Color(0xff272727),
                fontSize: 24,
                fontFamily: "Arya",
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_border,
              color: AppColors.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.text_snippet_outlined,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
      body:/* Container(
        child: new Text("read value from sharepreference is:"+_email),
      ),*/ Column(
        children: [
          FutureBuilder<Cart>(
            future: getCartData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.67,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: snapshot.data!.result.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 15, right: 15),
                        child: Card(
                            margin: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 120,
                              width: double.infinity,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 12.0, left: 9),
                                        child: Image.asset(snapshot.data!.result[index].filename),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          snapshot.data!.result[index].pname,
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
                                          snapshot.data!.result[index].price,
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          snapshot.data!.result[index].qty,
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
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
                                            onPressed: () {},
                                            icon: Icon(Icons
                                                .highlight_remove_outlined),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    },
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return Center(child: const CircularProgressIndicator());
            },
          ),
        ],
      ), /*Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          children: [

            */ /*cartWidget(context),
            SizedBox(height: 15),
            cartDetails(context),
            SizedBox(height: 10),*/ /*
            appButton(context, AppColors.primaryColor, 'Place Order',
                AppColors.textColor,
                action: () {})
          ],
        ),
      ),*/
    );
  }
}
