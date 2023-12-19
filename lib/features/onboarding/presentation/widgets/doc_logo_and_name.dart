import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg'),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "DocDoc",
          style: TextStyles.font24Black700Weight,
        )
      ],
    );
  }
}
