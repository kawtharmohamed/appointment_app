import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/theming/colors.dart';
class TextStyles{
  static TextStyle font24Black700Weight= TextStyle(
    color: MyColors.black,
    fontSize:24.sp,
    fontWeight: FontWeight.w700,
  );
 static TextStyle font32BlueBold = TextStyle(
   color: MyColors.mainBlue,
   fontSize:32.sp,
   fontWeight: FontWeight.bold,
 );
  static TextStyle font13GreyRegular = TextStyle(
    color: MyColors.grey,
    fontSize:13.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font16White500Weight= TextStyle(
    color: MyColors.white,
    fontSize:16.sp,
    fontWeight: FontWeight.w500,
  );
}