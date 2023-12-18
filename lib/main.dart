import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return ScreenUtilInit(
      designSize:const Size (375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: MyColors.mainBlue,
            scaffoldBackgroundColor: MyColors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingPage,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
