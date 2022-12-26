
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class StorageService{
  final storage = FlutterSecureStorage();
  static String userLogged = "User logged Key";
  userLoggedIn(){
    storage.write(key: userLogged, value: "true");
  }
  userLoggedOut(){
    storage.write(key: userLogged, value: "false");
  }
  Future<String?> getUserLoggedIN(){
    return storage.read(key: userLogged);
  }
}