import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/pages/bottom_navigation.dart';
import 'package:the_lash_supply/modules/home/pages/home_page.dart';
import 'package:the_lash_supply/modules/onboarding/pages/login.dart';
import 'package:the_lash_supply/modules/onboarding/pages/register.dart';
import 'modules/bottom_nav_bar/bloc/navigation_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(8)),
          child: Text("Skip"),
        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomNavigation()));
        },
      ),*/
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/splashscreen1.png"),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 15, right: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 485),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              child: Text('REGISTER'),
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: Color.fromRGBO(221, 51, 51, 1),
                                //side: BorderSide(color: Colors.white, width: 20),
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                                shadowColor: Colors.lightBlue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              //color: Color.fromRGBO(2, 141, 153, 1),
                              //#17B9CF
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              child: Text('LOGIN',style: TextStyle(color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: Color.fromRGBO(255, 234, 235, 1),
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                //backgroundColor: Color.fromRGBO(2, 141, 153, 1),
                                //side: BorderSide(color: Colors.white, width: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                                shadowColor: Colors.lightBlue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              //color: Color.fromRGBO(2, 141, 153, 1),
                              //#17B9CF
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(padding: EdgeInsets.only(right: 15),
                            child: Container(
                              alignment: Alignment.topLeft,
                              width: double.infinity,
                              height: 40,
                              child: ElevatedButton(
                                child: Text('Skip'),
                                style: ElevatedButton.styleFrom(
                                  // backgroundColor: Colors.black,
                                  //side: BorderSide(color: Colors.white, width: 20),
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                                  shadowColor: Colors.lightBlue,
                                ),
                                onPressed: () async{
                                  Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder:
                                        (context) => const BottomNavigation()
                                    ),
                                  );
                                  final prefs = await SharedPreferences.getInstance();
                                  await prefs.setBool('skipButton', true);
                                },
                                //color: Color.fromRGBO(2, 141, 153, 1),
                                //#17B9CF
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
Container(
alignment: Alignment.topRight,
width: double.infinity,
height: 40,
child: ElevatedButton(
child: Text('SKIP'),
style: ElevatedButton.styleFrom(
backgroundColor: Color.fromRGBO(221, 51, 51, 1),
//side: BorderSide(color: Colors.white, width: 20),
textStyle: const TextStyle(
color: Colors.white,
fontSize: 25,
fontStyle: FontStyle.normal),
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.all(Radius.circular(30))),
shadowColor: Colors.lightBlue,
),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => BottomNavigation()));
},
),
),*/
