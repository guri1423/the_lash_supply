import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';
import 'package:the_lash_supply/product_details.dart';
class ProductText extends StatefulWidget {
  ProductDetails modal;
   ProductText({Key? key,required this.modal}) : super(key: key);

  @override
  State<ProductText> createState() => _ProductTextState();
}

class _ProductTextState extends State<ProductText> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.44,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
              items: [
                Container(
                  child: Image.network(
                    widget.modal.imgCollection[1],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    widget.modal.imgCollection[1],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    widget.modal.imgCollection[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Image.network(
                    widget.modal.imgCollection[1],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Text(
              widget.modal.name,
              style: TextStyle(
                color: Color(0xff333232),
                fontSize: 22,
                fontFamily: "FiraSans",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Row(
              children: [
                Text(
                  widget.modal.minPrice,
                  style: TextStyle(
                    color: Color(0xffdd3333),
                    fontSize: 20,
                  ),
                ),
                Text(
                  "  -  ",
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  widget.modal.maxPrice,
                  style: TextStyle(
                    color: Color(0xffdd3333),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              widget.modal.attributeName1,
              style: TextStyle(
                color: Color(0xff2d2d2d),
                fontSize: 15,
              ),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Length of Lashes:",
                  style: TextStyle(
                    color: Color(0xff2d2d2d),
                    fontSize: 15,
                  ),
                ),
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Product Descripition',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 25,
                              onPressed: () async{
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Product1(modal: widget.modal,)));
                              },
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*Widget productText(context, {required ProductDetails modal}){
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.44,
          width: MediaQuery.of(context).size.width,
          child: Carousel(
            items: [
              Container(
                child: Image.network(
                  modal.imgCollection[1],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.network(
                  modal.imgCollection[1],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.network(
                  modal.imgCollection[0],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.network(
                  modal.imgCollection[1],
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Text(
            modal.name,
            style: TextStyle(
              color: Color(0xff333232),
              fontSize: 22,
              fontFamily: "FiraSans",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Row(
            children: [
              Text(
                modal.minPrice!,
                style: TextStyle(
                  color: Color(0xffdd3333),
                  fontSize: 20,
                ),
              ),
              Text(
                "  -  ",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                modal.maxPrice!,
                style: TextStyle(
                  color: Color(0xffdd3333),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            modal.attributeName1,
            style: TextStyle(
              color: Color(0xff2d2d2d),
              fontSize: 15,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Length of Lashes:",
            style: TextStyle(
              color: Color(0xff2d2d2d),
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Product Descripition',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 25,
                        onPressed: () async{
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product1(modal: modal,)));
                        },
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}*/

