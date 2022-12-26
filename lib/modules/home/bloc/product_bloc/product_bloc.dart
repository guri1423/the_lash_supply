import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

import '../../../onboarding/repository/auth_repositry.dart';
import '../../model/bannerimage.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
   AuthRepository authRepository = AuthRepository();

  ProductBloc() : super(ProductInitial()) {

    on<LoadProductEvent>((event, emit) async {

     if (event is LoadProductEvent){
       emit(ProductLoading());

      try{
        List<ProductDetails>? modal = await authRepository.product();
        List<BannerImage>? bannerModel = await authRepository.banner();
        emit(ProductSuccess(modal!,bannerModel!));
      }
      catch(e){

        debugPrint(e.toString());
        emit(ProductFail());
      }

     }


    }
    );
  }

}
