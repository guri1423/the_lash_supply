// To parse this JSON data, do
//
//     final cart = cartFromJson(jsonString);

import 'dart:convert';

Cart cartFromJson(String str) => Cart.fromJson(json.decode(str));

String cartToJson(Cart data) => json.encode(data.toJson());

class Cart {
  Cart({
    required this.result,
  });

  List<Result> result;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.id,
    required this.pname,
    required this.email,
    required this.filename,
    required this.price,
    required this.qty,
    required this.totalPrice,
    required this.v,
  });

  String id;
  String pname;
  String email;
  String filename;
  String price;
  String qty;
  String totalPrice;
  int v;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    pname: json["Pname"],
    email: json["email"],
    filename: json["filename"],
    price: json["Price"],
    qty: json["Qty"],
    totalPrice: json["TotalPrice"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Pname": pname,
    "email": email,
    "filename": filename,
    "Price": price,
    "Qty": qty,
    "TotalPrice": totalPrice,
    "__v": v,
  };
}
