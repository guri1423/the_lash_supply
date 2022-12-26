part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}


class ButtonTapEvent extends LoginEvent {
  LoginRequestModal modal;
  ButtonTapEvent(
      this.modal
      );
  @override
  List<Object?> get props => [
    modal
  ];



}