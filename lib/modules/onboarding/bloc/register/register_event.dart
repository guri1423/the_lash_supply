part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class ButtonPressed extends RegisterEvent{
  RegisterModal modal;
  ButtonPressed(
      this.modal
      );



  @override
  List<Object?> get props => throw UnimplementedError();}
