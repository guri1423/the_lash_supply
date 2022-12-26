

import 'dart:convert';


class RegisterModal{

  //constructor
  RegisterModal({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.lastName


  });

  String? name;
  String? email;
  String? password;
  String? phone;
  String? lastName;

  // factory Register.fromJson(Map<String, dynamic>json) => Register();

  Map<String, dynamic> toJson() => {
    "firstname": name,
    "email": email,
    "Password": password,
    "Phone": phone,
    "Lastname": lastName



  };


}

RegisterRespoModel registerRespoFromJson(String str) => RegisterRespoModel.fromJson(json.decode(str));

class RegisterRespoModel{

  bool success ;
  String message;


  RegisterRespoModel(
      {required this.success,
      required this.message}
      );
  factory RegisterRespoModel.fromJson(Map<String, dynamic> json) => RegisterRespoModel(
    success: json["success"],
    message: json["message"]


  );

}


