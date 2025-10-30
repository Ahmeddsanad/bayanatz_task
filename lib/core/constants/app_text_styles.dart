import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle get semiBold28spGrayed => TextStyle(
    fontSize: 28.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.grayTextColor,
  );
}
