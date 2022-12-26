





import 'dart:convert';

class LoginRequestModal{


  //constructor
  LoginRequestModal({
    this.email,
    this.password,


  });

  String? email;
  String? password;


  // factory Register.fromJson(Map<String, dynamic>json) => Register();

  Map<String, dynamic> toJson() => {

    "email": email,
    "Password": password,


  };




}

LoginRespoModel loginRespoFromJson(String str) => LoginRespoModel.fromJson(json.decode(str));

class LoginRespoModel{
    String  message;
    String  status;

    LoginRespoModel(
    {required this.message, required this.status}
        );
    factory LoginRespoModel.fromJson(Map<String, dynamic> json) => LoginRespoModel(
      status: json["status"],
      message: json["message"],

    );

}


