import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_fonts.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle semiBold28spGrayed(BuildContext context) => TextStyle(
    fontSize: isTablet(context) ? 28.sp : 22.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.grayTextColor,
  );
  static TextStyle semiBold16spGrayed(BuildContext context) => TextStyle(
    fontSize: isTablet(context) ? 22.sp : 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.grayTextColor,
  );
  static TextStyle semiBold22spGrayed(BuildContext context) => TextStyle(
    fontSize: isTablet(context) ? 22.sp : 18.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.grayTextColor,
  );
  static TextStyle medium20spGrayed(BuildContext context) => TextStyle(
    fontSize: isTablet(context) ? 20.sp : 16.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.grayTextColor,
  );
  static TextStyle medium14spLightedGray(BuildContext context) => TextStyle(
    fontSize: isTablet(context) ? 14.sp : 12.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.lightedGrayTextColor,
  );

  static TextStyle regular14spBlue(BuildContext context) => TextStyle(
    color: AppColors.blueMapFieldColor,
    fontSize: isTablet(context) ? 18.sp : 14.sp,
    fontWeight: AppFontWeight.regular,
  );
}
