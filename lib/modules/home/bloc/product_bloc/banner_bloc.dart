import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_lash_supply/modules/category/model/category_modal.dart';

import '../../../onboarding/repository/auth_repositry.dart';
import '../../model/bannerimage.dart';

part 'banner_event.dart';
part 'banner_state.dart';
class BannerBloc extends Bloc<BannerEvent, BannerState> {

  AuthRepository authRepository = AuthRepository();

  BannerBloc() : super(BannerInitial()) {

    on<BannerEvent>((event, emit) async{
      if(event is LoadBannerEvent){
        emit(BannerInitial());
      }

      try{
        List<BannerImage>? modal = await authRepository.banner();
        emit(BannerSuccess(modal!));
      }

      catch(e){
        debugPrint(e.toString());
        emit(BannerFail());
      }



    }
    );
  }
}