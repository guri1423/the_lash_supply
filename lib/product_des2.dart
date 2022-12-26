import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:the_lash_supply/product_details.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

class Product2 extends StatefulWidget {
  ProductDetails modal;

  Product2({Key? key, required this.modal}) : super(key: key);

  @override
  State<Product2> createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  late String dropdownvalue;
  late String dropdownvalue1;
  List<String> items = [];
  List<String> items1 = [];

  @override
  void initState() {
    items.addAll(widget.modal.attributeType1);
    items1.addAll(widget.modal.attributeType2);
    dropdownvalue = items[0];
    dropdownvalue1 = items1[0];
    print(items1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.modal.attributeName1,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    ':',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  SizedBox(width: 10),
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
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.0),
                child: Row(
                  children: [
                    Text(
                      widget.modal.attributeName2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      ':',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue1,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      // Array list of items
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue1 = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6, left: 15, right: 15),
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
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product1(
                                        modal: widget.modal,
                                      )));
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
    );
  }
}

