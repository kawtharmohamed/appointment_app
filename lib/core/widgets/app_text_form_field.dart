import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? suffixIcon;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backGroundColor;
  final TextEditingController? controller;
  final Function (String?) validator;
  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.isObscureText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.backGroundColor, this.controller, required this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField( controller:  controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: MyColors.mainBlue,
                  width: 1.3.w,
                ),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: MyColors.lighterGrey,
                  width: 1.3.w,
                ),
                borderRadius: BorderRadius.circular(16)),
        errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(16)),
        focusedErrorBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(16)) ,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGreyMedium,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backGroundColor ?? MyColors.moreLightGrey,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value){
      return validator(value);
      },
    );
  }
}
