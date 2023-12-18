import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/login/presentation/pages/login_page.dart';
import 'package:appointment_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingPage:
       return MaterialPageRoute(builder: (_)=> const OnBoardingPage());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_)=> const LoginPage());
    } return null;
  }
}