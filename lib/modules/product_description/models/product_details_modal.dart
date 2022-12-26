// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

/*import 'dart:convert';

List<ProductDetails> productDetailsFromJson(String str) => List<ProductDetails>.from(json.decode(str).map((x) => ProductDetails.fromJson(x)));

String productDetailsToJson(List<ProductDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductDetails {
  ProductDetails({
    this.id,
    this.name,
    this.desc,
    this.cateName,
    this.minPrice,
    this.maxPrice,
    this.skuNo,
    this.attributeName1,
    this.attributeName2,
    this.attributeType1,
    this.attributeType2,
    this.filename,
    this.price,
    this.v,
  });
  String? id;
  String? name;
  String? desc;
  String? cateName;
  String? minPrice;
  String? maxPrice;
  String? skuNo;
  String? attributeName1;
  String? attributeName2;
  List<String>? attributeType1;
  List<String>? attributeType2;
  String? filename;
  String? price;
  int? v;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    id: json["_id"],
    name: json["Name"],
    desc: json["Desc"],
    cateName: json["CateName"],
    minPrice: json["MinPrice"],
    maxPrice: json["MaxPrice"],
    skuNo: json["SkuNo"],
    attributeName1: json["AttributeName1"],
    attributeName2: json["AttributeName2"],
    attributeType1: List<String>.from(json["AttributeType1"].map((x) => x)),
    attributeType2: List<String>.from(json["AttributeType2"].map((x) => x)),
    filename: json["filename"],
    price: json["Price"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Name": name,
    "Desc": desc,
    "CateName": cateName,
    "MinPrice": minPrice,
    "MaxPrice": maxPrice,
    "SkuNo": skuNo,
    "AttributeName1": attributeName1,
    "AttributeName2": attributeName2,
    "AttributeType1": List<dynamic>.from(attributeType1!.map((x) => x)),
    "AttributeType2": List<dynamic>.from(attributeType2!.map((x) => x)),
    "filename": filename,
    "Price": price,
    "__v": v,
  };
}*/
// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

/*
import 'dart:convert';

List<ProductDetails> productDetailsFromJson(String str) => List<ProductDetails>.from(json.decode(str).map((x) => ProductDetails.fromJson(x)));

String productDetailsToJson(List<ProductDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductDetails {
  ProductDetails({
    required this.id,
    required this.name,
    required this.desc,
    required this.cateName,
    required this.minPrice,
    required this.maxPrice,
    required this.skuNo,
    required this.attributeName1,
    required this.attributeName2,
    required this.attributeType1,
    required this.attributeType2,
    required this.imgCollection,
    required this.price,
    required this.v,
    required this.filename,
  });

  String id;
  String name;
  String desc;
  String cateName;
  String minPrice;
  String maxPrice;
  String skuNo;
  String attributeName1;
  String attributeName2;
  List<String> attributeType1;
  List<String> attributeType2;
  List<String> imgCollection;
  String price;
  int v;
  List<String> filename; // es line List String show ker raha h woo bar bar

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    id: json["_id"],
    name: json["Name"] == null ? null : json["Name"],
    desc: json["Desc"] == null ? null : json["Desc"],
    cateName: json["CateName"] == null ? null : json["CateName"],
    minPrice: json["MinPrice"] == null ? null : json["MinPrice"],
    maxPrice: json["MaxPrice"] == null ? null : json["MaxPrice"],
    skuNo: json["SkuNo"] == null ? null : json["SkuNo"],
    attributeName1: json["AttributeName1"] == null ? null : json["AttributeName1"],
    attributeName2: json["AttributeName2"] == null ? null : json["AttributeName2"],
    attributeType1: List<String>.from(json["AttributeType1"].map((x) => x)),
    attributeType2: List<String>.from(json["AttributeType2"].map((x) => x)),
    imgCollection: List<String>.from(json["imgCollection"].map((x) => x)),
    price: json["Price"] == null ? null : json["Price"],
    v: json["__v"],
    filename: json["filename"] == null ? null : List<String>.from(json["filename"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Name": name == null ? null : name,
    "Desc": desc == null ? null : desc,
    "CateName": cateName == null ? null : cateName,
    "MinPrice": minPrice == null ? null : minPrice,
    "MaxPrice": maxPrice == null ? null : maxPrice,
    "SkuNo": skuNo == null ? null : skuNo,
    "AttributeName1": attributeName1 == null ? null : attributeName1,
    "AttributeName2": attributeName2 == null ? null : attributeName2,
    "AttributeType1": List<dynamic>.from(attributeType1.map((x) => x)),
    "AttributeType2": List<dynamic>.from(attributeType2.map((x) => x)),
    "imgCollection": List<dynamic>.from(imgCollection.map((x) => x)),
    "Price": price == null ? null : price,
    "__v": v,
    "filename": filename == null ? null : List<dynamic>.from(filename.map((x) => x)),
  };
}
*/
// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

List<ProductDetails> productDetailsFromJson(String str) => List<ProductDetails>.from(json.decode(str).map((x) => ProductDetails.fromJson(x)));

String productDetailsToJson(List<ProductDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductDetails {
  ProductDetails({
    required this.id,
    required this.name,
    required this.desc,
    required this.cateName,
    required this.minPrice,
    required this.maxPrice,
    required this.skuNo,
    required this.attributeName1,
    required this.attributeName2,
    required this.attributeType1,
    required this.attributeType2,
    required this.imgCollection,
    required this.price,
    required this.v,
  });

  String id;
  String name;
  String desc;
  String cateName;
  String minPrice;
  String maxPrice;
  String skuNo;
  String attributeName1;
  String attributeName2;
  List<String> attributeType1;
  List<String> attributeType2;
  List<String> imgCollection;
  String price;
  int v;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    id: json["_id"],
    name: json["Name"],
    desc: json["Desc"],
    cateName: json["CateName"],
    minPrice: json["MinPrice"],
    maxPrice: json["MaxPrice"],
    skuNo: json["SkuNo"],
    attributeName1: json["AttributeName1"],
    attributeName2: json["AttributeName2"],
    attributeType1: List<String>.from(json["AttributeType1"].map((x) => x)),
    attributeType2: List<String>.from(json["AttributeType2"].map((x) => x)),
    imgCollection: List<String>.from(json["imgCollection"].map((x) => x)),
    price: json["Price"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Name": name,
    "Desc": desc,
    "CateName": cateName,
    "MinPrice": minPrice,
    "MaxPrice": maxPrice,
    "SkuNo": skuNo,
    "AttributeName1": attributeName1,
    "AttributeName2": attributeName2,
    "AttributeType1": List<dynamic>.from(attributeType1.map((x) => x)),
    "AttributeType2": List<dynamic>.from(attributeType2.map((x) => x)),
    "imgCollection": List<dynamic>.from(imgCollection.map((x) => x)),
    "Price": price,
    "__v": v,
  };
}
