import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = AppColors.createOrYesColorButton,
    this.title = 'title',
  });

  final void Function()? onPressed;
  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: isTablet(context) ? 70.w : 40.w,
          vertical: isTablet(context) ? 12.h : 10.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isTablet(context) ? 12.r : 8.r),
        ),
      ),
      child: Text(title, style: AppTextStyle.semiBold16spGrayed(context)),
    );
  }
}
