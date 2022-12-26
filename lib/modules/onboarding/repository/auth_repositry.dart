import 'package:the_lash_supply/modules/cart/model/add_to_cart1.dart';
import 'package:the_lash_supply/modules/home/model/bannerimage.dart';
import 'package:the_lash_supply/modules/onboarding/models/register_modal/register_modal.dart';
import 'package:the_lash_supply/services/api_services.dart';

import '../../category/model/category_modal.dart';
import '../../product_description/models/product_details_modal.dart';
import '../models/log_in_modal/log_in_modal.dart';

class AuthRepository {

final ApiServices apiServices = ApiServices();

  Future<LoginRespoModel?> login(LoginRequestModal modal) async {
   return await apiServices.userLogin(modal);
  }

  Future<RegisterRespoModel?> register(RegisterModal modal) async{
    return await apiServices.userRegister(modal);
  }

  Future<List<ProductDetails>?> product() async{
    return await apiServices.getAllProducts();
  }
Future<List<BannerImage>?> banner() async{
  return await apiServices.getAllBanner();
}
  Future<List<CategoryModal>?> category() async{
    return await apiServices.getcategory();
  }

  Future<bool?> forgotPass(email) async{
    return await apiServices.forgotPassword(email);
  }
  Future<List<ProductDetails>?> productbycategory(String Name) async{
  return await apiServices.getProductByCat(Name);
}
Future<List<ProductDetails>?> searchProduct(String Name) async{
  return await apiServices.searchProduct(Name);
}
}
