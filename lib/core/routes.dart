import 'package:flutter/material.dart';
import 'package:wats_app/screens/login_screen/login.dart';
import 'package:wats_app/screens/wellcome_screen/welcome_screen.dart';

enum AppRoutes{
 Home,
 Login,
}

extension StringValues on AppRoutes{
   String? get name => const {
        AppRoutes.Home: '/',
        AppRoutes.Login: '/login',
  }[this];


   Widget? get screen => const {
        AppRoutes.Home: WelcomeScreen(),
        AppRoutes.Login: LoginScreen(),
      }[this];
}



// ignore: non_constant_identifier_names
final Routes= {
  AppRoutes.Home.name!: (context) => AppRoutes.Home.screen!,
  AppRoutes.Login.name!: (context) => AppRoutes.Login.screen!,
};