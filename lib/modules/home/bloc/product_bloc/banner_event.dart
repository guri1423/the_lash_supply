part of 'banner_bloc.dart';

abstract class BannerEvent extends Equatable {
   BannerEvent();
}

class LoadBannerEvent extends BannerEvent{
  @override
  List<Object> get props => [];
}
