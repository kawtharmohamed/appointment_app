import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/presentation/pages/login_page.dart';
import 'package:appointment_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:appointment_app/features/register/presentation/cubit/register_cubit.dart';
import 'package:appointment_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/register/presentation/pages/Register_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.loginPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child:  LoginPage()));
      case Routes.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.homePage:
        return MaterialPageRoute(builder:(_)=> const HomePage());
      case Routes.registerPage:
       return MaterialPageRoute(builder:(_)=> BlocProvider(create: (context)=> getIt<RegisterCubit>(),
       child: RegisterPage()));
    }
    return null;
  }
}
