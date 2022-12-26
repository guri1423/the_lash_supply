import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_lash_supply/modules/onboarding/models/register_modal/register_modal.dart';

import '../../repository/auth_repositry.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {

    final AuthRepository authRepository = AuthRepository();

    on<RegisterEvent>((event, emit) async{
      if (event is ButtonPressed){
        emit(RegisterLoading());
        try{
          RegisterRespoModel? modal = await authRepository.register(event.modal);
          if(modal!.success== true){
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('skipButton', false);
            emit(RegisterSuccess());
          }
          else{
            emit(RegisterFail(modal.message));
          }

        }
        catch(e){

          emit(RegisterFail(e.toString()));

        }

      }
    });
  }
}
