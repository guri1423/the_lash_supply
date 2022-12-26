
import 'package:flutter/material.dart';
import 'package:the_lash_supply/edit_profile.dart';
import 'package:the_lash_supply/home1.dart';

Widget profilePic(context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
    child: Column(
      children: [
        CircleAvatar(
          radius: 45,
        backgroundImage: AssetImage('assets/images/profile.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 85.0, left: 85),
          child: Container(
              width: double.infinity,//why we use this
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
                },
                child: Text(
                  'EDIT PROFILE',
                  style: TextStyle(color: Colors.white,fontSize: 25),
                ),
              )
          ),
        ),
      ],
    ),
  );
}