part of 'banner_bloc.dart';
abstract class BannerState extends Equatable {
   BannerState();
}

class BannerInitial extends BannerState {
  @override
  List<Object> get props => [];
}

class BannerLoading extends BannerState {
  @override
  List<Object> get props => [];
}
class BannerSuccess extends BannerState {
  List <BannerImage> model;
  BannerSuccess(
      this.model
      );
  @override
  List<Object> get props => [model];
}
class BannerFail extends BannerState {
  @override
  List<Object> get props => [];
}
