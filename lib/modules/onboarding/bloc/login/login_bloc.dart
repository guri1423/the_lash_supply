
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/modules/onboarding/models/log_in_modal/log_in_modal.dart';
import 'package:the_lash_supply/modules/onboarding/models/log_in_modal/log_in_modal.dart';

import '../../models/log_in_modal/log_in_modal.dart';
import '../../repository/auth_repositry.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
 /* SharedPreferences loginStorage = LoginRequestModal(email: ,password: );*/
  LoginBloc() : super(LoginInitial()) {
    final AuthRepository authRepository = AuthRepository();
    on<LoginEvent>((event, emit) async {
     if (event is ButtonTapEvent){
       emit (LoginLoading());
       try{
     LoginRespoModel? model=  await authRepository.login(event.modal);
     if (model!.status== 'success'){
       final prefs = await SharedPreferences.getInstance();
       await prefs.setBool('skipButton', false);
       emit(LoginSuccess());
     }
     else
       {
         emit(LoginFail(model.message));
       }
       }
       catch(e){
         emit(LoginFail(e.toString()));
       }
     }
    }
    );
  }
  /*Future<bool>saveEmail(String value){
    return loginStorage.setString('',value);
  }
  String? getEmail(){
    if(loginStorage!=null){
      return loginStorage.getString(email)??'';
    }
    else
      return '';
  }*/
 /* save(){
    loginStorage.setString('email',)
  }*/
}
/*
loginStorage = await SharedPreferences.getInstance();*/
