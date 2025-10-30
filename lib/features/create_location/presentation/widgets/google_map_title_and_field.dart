import 'package:bayanatz_task/core/constants/app_assets.dart';
import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GoogleMapTitleAndField extends StatelessWidget {
  const GoogleMapTitleAndField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location at Google Maps',
          style: AppTextStyle.semiBold16spGrayed(context),
        ),
        verticalSpace(4),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'https://www.google.com/maps/place',
            enabled: false,
            hintStyle: AppTextStyle.regular14spBlue(context),
            border: InputBorder.none,
            fillColor: AppColors.lightModeBGColor,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 4.h,
            ),
            prefixIconConstraints: const BoxConstraints(),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: SvgPicture.asset(
                AppAssetsData.mapIcon,
                width: isTablet(context) ? 24.w : 20.w,
                height: isTablet(context) ? 24.h : 20.h,
              ),
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: AppColors.lightModeBGColor,
              ),
            ),
          ),
          
        ),
      ],
    );
  }
}
