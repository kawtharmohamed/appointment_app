import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appointment_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      nextScreen: const OnBoardingPage(),
      duration: 1000,
    );
  }
}
