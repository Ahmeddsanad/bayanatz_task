import 'package:bayanatz_task/core/constants/app_assets.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewLocationAppBar extends StatelessWidget {
  const NewLocationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text('Tracking Time', style: AppTextStyle.semiBold28spGrayed),
        ),
        horizontalSpace(10),
        SvgPicture.asset(
          AppAssetsData.arrowRightIcon,
          width: 28.w,
          height: 28.h,
          fit: BoxFit.fill,
        ),
        horizontalSpace(10),
        Expanded(
          child: Text(
            'Creating New Location',
            style: AppTextStyle.semiBold28spGrayed,
          ),
        ),
      ],
    );
  }
}
