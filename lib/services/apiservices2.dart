import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:the_lash_supply/modules/cart/model/add_to_cart1.dart';
import 'package:http/http.dart' as http;
Future<bool?> postAllProducts( AddCart1 model) async {
  debugPrint(model.toJson().toString());

  try{
    String url = "http://3.114.92.202:4003/api/AddCart";
    final response = await http.post(Uri.parse(url), headers: {
    'Content-type': 'application/json'
    }, body: json.encode(model.toJson()));
    debugPrint(response.body);
    var jsonResponse = json.decode(response.body);
    // debugPrint(jsonResponse['success']);
   return jsonResponse["success"];

  }
  catch(e){
    debugPrint(e.toString());
  }
  /*if (response.statusCode == 200 || response.statusCode == 400) {
    debugPrint('response of add to cart${response.body}');
    var jsonResponse = json.decode(response.body);
    if (jsonResponse["success"] == "true") {
      return true;
    } else {
      return false;
    }
  } else {
    throw Exception('Failed to load data');
  }*/
}