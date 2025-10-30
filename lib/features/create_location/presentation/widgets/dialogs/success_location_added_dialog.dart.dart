import 'package:bayanatz_task/core/constants/app_assets.dart';
import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SuccessLocationAddedDialog extends StatelessWidget {
  const SuccessLocationAddedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      child: Container(
        width: isTablet(context) ? 400.w : 70.w,
        height: isTablet(context) ? 250.h : 170.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(isTablet(context) ? 16.r : 12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssetsData.sucess,
              width: isTablet(context) ? 100.w : 60.w,
            ),
            verticalSpace(15),
            Text('Successful', style: AppTextStyle.medium20spGrayed(context)),
            verticalSpace(5),
            Text(
              'You Successfully Added New Locations',
              style: AppTextStyle.medium14spLightedGray(context),
            ),
          ],
        ),
      ),
    );
  }
}
