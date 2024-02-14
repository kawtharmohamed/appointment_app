import 'package:appointment_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/core/theming/colors.dart';
class TextStyles{
  static TextStyle font24BlackBold= TextStyle(
    color: MyColors.black,
    fontSize:24.sp,
    fontWeight: FontWeightHelper.bold,
  );
 static TextStyle font32BlueBold = TextStyle(
   color: MyColors.mainBlue,
   fontSize:32.sp,
   fontWeight: FontWeight.bold,
 );
  static TextStyle font24BlueBold = TextStyle(
    color: MyColors.mainBlue,
    fontSize:24.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13GreyRegular = TextStyle(
    color: MyColors.grey,
    fontSize:13.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14GreyRegular = TextStyle(
    color: MyColors.grey,
    fontSize:14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16WhiteMedium= TextStyle(
    color: MyColors.white,
    fontSize:16.sp,
    fontWeight:  FontWeightHelper.medium,
  );
  static TextStyle font14LightGreyMedium= TextStyle(
    color: MyColors.lightGrey,
    fontSize:14.sp,
    fontWeight:  FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueMedium= TextStyle(
    color: MyColors.darkBlue,
    fontSize:14.sp,
    fontWeight:  FontWeightHelper.medium,
  );
  static TextStyle font13BlueRegular= TextStyle(
    color: MyColors.mainBlue,
    fontSize:13.sp,
    fontWeight:  FontWeightHelper.regular,
  );
  static TextStyle font16WhiteSemiBold= TextStyle(
    color: MyColors.white,
    fontSize:16.sp,
    fontWeight:  FontWeightHelper.semiBold,
  );
  static TextStyle font13DarkBlueRegular= TextStyle(
    color: MyColors.darkBlue,
    fontSize:13.sp,
    fontWeight:  FontWeightHelper.regular,
  );
  static TextStyle font13DarkBlueSemiBold= TextStyle(
    color: MyColors.darkBlue,
    fontSize:13.sp,
    fontWeight:  FontWeightHelper.semiBold,
  );
  static TextStyle font15BlueSemiBold= TextStyle(
    color: MyColors.mainBlue,
    fontSize:15.sp,
    fontWeight:  FontWeightHelper.semiBold,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    color: MyColors.darkBlue,
    fontSize:15.sp,
    fontWeight:  FontWeightHelper.medium,
  );
}