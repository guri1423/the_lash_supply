

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/bloc/navigation_cubit.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/constants/nav_bar_items.dart';
import 'package:the_lash_supply/modules/account/pages/account_page.dart';
import 'package:the_lash_supply/modules/cart/pages/cart_page.dart';
import 'package:the_lash_supply/modules/category/pages/category_page.dart';
import 'package:the_lash_supply/modules/home/pages/home_page.dart';
import 'package:the_lash_supply/modules/order/pages/order_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height*0.11,
          width: MediaQuery.of(context).size.width,
          child: BottomNavigationBar(

              type: BottomNavigationBarType.fixed,
              currentIndex: state.index,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.secondaryColor,
            selectedLabelStyle: const TextStyle(
              overflow: TextOverflow.visible,
            ),

              items: [
                BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,

            ),
                label: 'HOME',
          ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.category
                    ),
                    label: 'CATEGORY'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.shopping_cart
                    ),
                    label: 'CART'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.markunread_mailbox_outlined,
                    ),
                    label: 'MY ORDER'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.account_circle_outlined
                    ),
                    label: 'ACCOUNT'
                ),
              ],
            onTap: (index){
                if(index==0){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.Home);
                }
                else if (index ==1){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.Category);
                }

                else if(index ==2){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.Cart);
                }
                else if(index ==3){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.MyOrder);
                }
                else if(index ==4){
                  BlocProvider.of<NavigationCubit>(context).getNavBarItem(NavbarItem.MyAccount);
                }
            },
          ),
        );

      }
      ),

      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if(state.navbarItem==NavbarItem.Home){
            return HomePage();
          }
          else if (state.navbarItem==NavbarItem.Category){
            return CategoryPage();
          }
          else if (state.navbarItem==NavbarItem.Cart){
            return CartPage();
          }
          else if (state.navbarItem==NavbarItem.MyOrder){
            return OrderPage();
          }
          else if (state.navbarItem==NavbarItem.MyAccount){
            return AccountPage();
          }
          return Container();
        }
        ),
      );
  }
}

