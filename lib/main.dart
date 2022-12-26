import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/modules/bottom_nav_bar/bloc/navigation_cubit.dart';
import 'package:the_lash_supply/modules/home/bloc/product_bloc/product_bloc.dart';
import 'package:the_lash_supply/modules/welcome_screen/pages/welcome_screen.dart';
import 'package:the_lash_supply/splashscreen.dart';


import 'modules/onboarding/pages/welcome_page.dart';
import 'modules/onboarding/repository/auth_repositry.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    AuthRepository authRepository = AuthRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SplashScreen(),

      ),
    );

  }
}


