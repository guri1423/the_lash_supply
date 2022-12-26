import 'package:flutter/material.dart';

class AppImage{
  String? image;

  AppImage({this.image});
}

List<String> images = [
   "assets/images/image2.png",

  "assets/images/image1.png",
  "assets/images/image3.png",
  "assets/images/image8.png"
];

List<String> images1 = [
  "assets/images/image4.png",

  "assets/images/image7.png",
  "assets/images/image5.png",
  "assets/images/image6.png"
];



Widget bannerArea (context){
  return SizedBox(
    width: 594,
    height: 183,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (BuildContext context, int index) { return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: 183,
            width: 122,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.fill
                )

            ),
          ),
        );
          },

      ),
    ),
  );



}

Widget bannerArea1 (context){
  return SizedBox(
    width: 594,
    height: 183,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
       physics: NeverScrollableScrollPhysics(),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (BuildContext context, int index) { return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: 183,
            width: 122,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images1[index]),
                    fit: BoxFit.fill
                )

            ),
          ),
        );},

      ),
    ),
  );



}


