
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/constants/nav_bar_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.Home,0));

  void getNavBarItem(NavbarItem navbarItem){
    switch (navbarItem){
      case NavbarItem.Home:
        emit(NavigationState(NavbarItem.Home, 0));
        break;
      case NavbarItem.Category:
        emit(NavigationState(NavbarItem.Category, 1));
        break;
      case NavbarItem.Cart:
        emit(NavigationState(NavbarItem.Cart, 2));
        break;
      case NavbarItem.MyOrder:
        emit(NavigationState(NavbarItem.MyOrder, 3));
        break;
      case NavbarItem.MyAccount:
        emit(NavigationState(NavbarItem.MyAccount, 4));
        break;

    }
  }

}
