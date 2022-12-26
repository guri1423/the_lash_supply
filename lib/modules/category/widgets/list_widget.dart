import 'package:flutter/material.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';
import 'package:the_lash_supply/modules/onboarding/repository/auth_repositry.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import 'package:the_lash_supply/modules/products_by_category/pages/products_by_cat.dart';

import '../model/category_modal.dart';


Widget categoryList(context, {required List<CategoryModal>? modal}) {
  final AuthRepository authRepository = AuthRepository();
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.67,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
        itemCount: modal!.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () async{
              /*List<ProductDetails>? response = await authRepository.productbycategory(CateName);
              debugPrint(response.toString());*/
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductsByCategory(name:  modal[index].cateName!,)));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: Container(
                width: 364,
                height: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColors[index],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        modal[index].cateName!,
                        style: TextStyle(
                          color: AppColors.blackContainer,
                          fontSize: AppFontsHeading.customFontSize - 8,
                          fontFamily: AppFontsHeading.customFontText,
                          fontWeight: AppFontsHeading.headingFontWeight,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 66,
                        height: 66,
                        child: ClipOval(
                            child: Image.network(
                          modal[index].filename!,
                          fit: BoxFit.cover,
                        )),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 11,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
  );
}
