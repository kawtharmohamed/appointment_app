import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed; // function tke an parameter
 // final VoidCallback onPressed; // function didn't take anything
  final TextStyle textStyle;
  final Color? color;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  const AppTextButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.textStyle,
      this.color,
      this.borderRadius,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 16))),
            backgroundColor:
                MaterialStatePropertyAll(color ?? MyColors.mainBlue),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h,
            )),
            fixedSize: MaterialStateProperty.all(
                Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 60.h))),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle,
        ));
  }
}
