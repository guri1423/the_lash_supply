
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_lash_supply/modules/category/model/category_modal.dart';

import '../../../onboarding/repository/auth_repositry.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {

  AuthRepository authRepository = AuthRepository();

  CategoryBloc() : super(CategoryInitial()) {

    on<CategoryEvent>((event, emit) async{
    if(event is LoadCategoryEvent){
      emit(CategoryInitial());
    }

    try{
      List<CategoryModal>? modal = await authRepository.category();
      emit(CategorySuccess(modal!));
    }

    catch(e){
      debugPrint(e.toString());
      emit(CategoryFail());
    }



    }
    );
  }
}
