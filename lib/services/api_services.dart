
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:the_lash_supply/modules/cart/model/add_to_cart1.dart';
import 'package:the_lash_supply/modules/cart/model/add_to_cart_model.dart';

import '../modules/category/model/category_modal.dart';
import '../modules/home/model/bannerimage.dart';
import '../modules/onboarding/models/log_in_modal/log_in_modal.dart';
import '../modules/onboarding/models/register_modal/register_modal.dart';
import '../modules/product_description/models/product_details_modal.dart';


var ImageUrl="http://3.114.92.202:4003/BannerImg/";
class ApiServices{

  Future<LoginRespoModel?> userLogin(LoginRequestModal model) async{
    try{
    print(model.toJson().toString());
      String url = "http://3.114.92.202:4003/api/userlogin";
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '<Your token>'
    };
      final response = await http.post(Uri.parse(url), body: json.encode(model.toJson()),headers: requestHeaders);
       debugPrint(response.body);
      return loginRespoFromJson(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }

  }




  Future<RegisterRespoModel?> userRegister(RegisterModal model) async{

    try{
      print(model.toJson().toString());

      String url = "http://3.114.92.202:4003/api/userRegister";

      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': '<Your token>'
      };

      final response = await http.post(Uri.parse(url), body: json.encode(model.toJson()), headers: requestHeaders);
      debugPrint(response.body);
        return registerRespoFromJson(response.body);
    }
   catch(e){
      debugPrint(e.toString());
   }
  }
  Future<AddCart1?> userCart(AddCart1 model) async{

    try{
      print(model.toJson().toString());
      String url = "http://3.114.92.202:4003/api/AddCart";
      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': '<Your token>'
      };

      final response = await http.post(Uri.parse(url), body: json.encode(model.toJson()), headers: requestHeaders);
      debugPrint(response.body);
      return json.decode(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
  Future<List<ProductDetails>?> getAllProducts() async {

    String url = "http://3.114.92.202:4003/productData";

   try{
     debugPrint("api hit");
     final response = await http.get(Uri.parse(url));

     return productDetailsFromJson(response.body);
   }
   catch(e){
     debugPrint(e.toString());
   }
  }

  Future<List<BannerImage>?> getAllBanner() async {

    String url = "http://3.114.92.202:4003/BannerImg/";

    try{
      final response = await http.get(Uri.parse(url));
      print(response.body);
      return  bannerImageFromJson(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
  Future<List<CategoryModal>?> getcategory() async {

    String url = "http://3.114.92.202:4003/category";

   try{
     debugPrint("api hit");

     final response = await http.get(Uri.parse(url));

     return categoryModalFromJson(response.body);
   }
   catch(e){
     debugPrint(e.toString());
   }
  }
  Future<bool?> forgotPassword(email) async {
    debugPrint(email);
    String url = "http://3.114.92.202:4003/api/sendforgotmail/$email";
    try{
      debugPrint("api hit");
      final response = await http.get(Uri.parse(url));
      debugPrint("api");
      debugPrint(response.body);
      return json.decode(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
  Future<List<ProductDetails>?> getProductByCat(String Name) async {

    String url = "http://3.114.92.202:4003/ProductData/$Name";
    try{
      debugPrint("api hit");

      final response = await http.get(Uri.parse(url));

      return productDetailsFromJson(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
  Future<List<ProductDetails>?> searchProduct(String Name) async {

    String url = "http://3.114.92.202:4003/MoreData/$Name";
    try{
      debugPrint("api hit");

      final response = await http.get(Uri.parse(url));

      return productDetailsFromJson(response.body);
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
}