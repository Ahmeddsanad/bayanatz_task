import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riff_switch/riff_switch.dart';

class LocationSettingsContent extends StatelessWidget {
  const LocationSettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location Settings',
          style: AppTextStyle.semiBold16spGrayed(context),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: isTablet(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Allow Breaks in Attendance',
                            style: AppTextStyle.semiBold16spGrayed(context),
                          ),
                          Spacer(),
                          RiffSwitch(
                            value: false,
                            type: RiffSwitchType.cupertino,
                            onChanged: (value) {},
                            activeColor: AppColors.blueMapFieldColor,
                          ),
                        ],
                      ),
                    ),
                    horizontalSpace(20),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Allow Pause',
                            style: AppTextStyle.semiBold16spGrayed(context),
                          ),
                          Spacer(),
                          RiffSwitch(
                            value: false,
                            type: RiffSwitchType.cupertino,
                            onChanged: (value) {},
                            activeColor: AppColors.blueMapFieldColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Allow Breaks in Attendance',
                          style: AppTextStyle.semiBold16spGrayed(context),
                        ),
                        Spacer(),
                        RiffSwitch(
                          value: false,
                          type: RiffSwitchType.cupertino,
                          onChanged: (value) {},
                          activeColor: AppColors.blueMapFieldColor,
                        ),
                      ],
                    ),
                    verticalSpace(10),
                    Row(
                      children: [
                        Text(
                          'Allow Pause',
                          style: AppTextStyle.semiBold16spGrayed(context),
                        ),
                        Spacer(),
                        RiffSwitch(
                          value: false,
                          type: RiffSwitchType.cupertino,
                          onChanged: (value) {},
                          activeColor: AppColors.blueMapFieldColor,
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
