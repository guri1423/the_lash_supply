part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginFail extends LoginState {
  String errorMessage;
  LoginFail(
      this.errorMessage
      );

  @override
  List<Object> get props => [
    errorMessage
  ];
}
