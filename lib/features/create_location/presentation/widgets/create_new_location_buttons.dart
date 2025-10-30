import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewLocationButtons extends StatelessWidget {
  const CreateNewLocationButtons({
    super.key,
    required this.onDiscard,
    required this.onCreate,
  });

  final void Function() onDiscard;
  final void Function() onCreate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onDiscard,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.discardOrNoColorButton,
            padding: EdgeInsets.symmetric(
              horizontal: isTablet(context) ? 50.w : 40.w,
              vertical: isTablet(context) ? 12.h : 10.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Text(
            'Discard',
            style: AppTextStyle.semiBold16spGrayed(context),
          ),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: onCreate,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.createOrYesColorButton,
            padding: EdgeInsets.symmetric(
              horizontal: isTablet(context) ? 70.w : 40.w,
              vertical: isTablet(context) ? 12.h : 10.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Text(
            'Create',
            style: AppTextStyle.semiBold16spGrayed(context),
          ),
        ),
      ],
    );
  }
}
