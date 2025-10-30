import 'package:bayanatz_task/core/constants/app_assets.dart';
import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CreateNewLocationDialog extends StatelessWidget {
  const CreateNewLocationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      child: Container(
        width: isTablet(context) ? 400.w : 70.w,
        height: isTablet(context) ? 320.h : 250.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(isTablet(context) ? 16.r : 12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssetsData.noteAdd,
              width: isTablet(context) ? 100.w : 60.w,
            ),
            verticalSpace(15),
            Text(
              'Create New Location',
              style: AppTextStyle.medium20spGrayed(context),
            ),
            verticalSpace(5),
            Text(
              'Are You Sure You Want To Add New Location ?',
              style: AppTextStyle.medium14spLightedGray(context),
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: AppColors.discardOrNoColorButton,
                  title: 'No',
                ),
                horizontalSpace(20),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: AppColors.createOrYesColorButton,
                  title: 'Yes',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
