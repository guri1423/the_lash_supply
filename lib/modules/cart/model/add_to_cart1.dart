// To parse this JSON data, do
//
//     final addCart1 = addCart1FromJson(jsonString);

import 'dart:convert';

AddCart1 addCart1FromJson(String str) => AddCart1.fromJson(json.decode(str));

String addCart1ToJson(AddCart1 data) => json.encode(data.toJson());

class AddCart1 {
  AddCart1({
    this.pname,
    this.email,
    this.attributeType1,
    this.attributeType2,
    this.price,
    this.qty,
    this.totalPrice,
  });

  String? pname;
  String? email;
  String? attributeType1;
  String? attributeType2;
  String? price;
  String? qty;
  String? totalPrice;

  factory AddCart1.fromJson(Map<String, dynamic> json) => AddCart1(
    pname: json["Pname"],
    email: json["email"],
    attributeType1: json["AttributeType1"],
    attributeType2: json["AttributeType2"],
    price: json["Price"],
    qty: json["Qty"],
    totalPrice: json["TotalPrice"]
  );

  Map<String, dynamic> toJson() => {
    "Pname": pname,
    "email": email,
    "AttributeType1": attributeType1,
    "AttributeType2": attributeType2,
    "Price": price,
    "Qty": qty,
    "TotalPrice": totalPrice
  };
}
