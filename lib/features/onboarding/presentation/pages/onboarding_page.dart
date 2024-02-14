import 'package:appointment_app/features/onboarding/presentation/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/features/onboarding/presentation/widgets/doc_image_and_text.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/features/onboarding/presentation/widgets/get_started_button.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
        child:Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 20.h,),
            const DocImageAndText(),
           Padding(
             padding:EdgeInsets.symmetric(horizontal: 20.w),
             child: Column(children: [
                Text("Manage and schedule all of your medical appointments easily "
                    "with Docdoc to get a new experience." , style: TextStyles.font13GreyRegular,
                  textAlign: TextAlign.center,),
               SizedBox(height: 20.h,),
               const GetStartedButton(),
              ],),
           )
          ],
        ),
      ))),
    );
  }
}
