import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/title_with_text_field.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/google_map_title_and_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riff_switch/riff_switch.dart';

class LocationDescriptionContent extends StatelessWidget {
  const LocationDescriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location Description',
          style: AppTextStyle.semiBold16spGrayed(context),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithTextField(
                title: 'Location Name',
                controller: TextEditingController(),
                hintText: 'Branch 1',
              ),
              verticalSpace(6),
              GoogleMapTitleAndField(),
              verticalSpace(4),
              Row(
                children: [
                  Expanded(
                    child: TitleWithTextField(
                      title: 'Latitude',
                      controller: TextEditingController(),
                      hintText: '30.0444',
                    ),
                  ),
                  horizontalSpace(15),
                  Expanded(
                    child: TitleWithTextField(
                      title: 'Longitude',
                      controller: TextEditingController(),
                      hintText: '31.2357',
                    ),
                  ),
                ],
              ),
              verticalSpace(6),
              Row(
                children: [
                  Text(
                    'Allow Geofence',
                    style: AppTextStyle.semiBold16spGrayed(context),
                  ),
                  Spacer(),
                  RiffSwitch(
                    value: false,
                    type: RiffSwitchType.cupertino,
                    activeColor: AppColors.blueMapFieldColor,
                    onChanged: (value) {},
                  ),
                  isTablet(context) ? Spacer(flex: 3) : SizedBox.shrink(),
                ],
              ),
              TitleWithTextField(
                title: 'Country',
                controller: TextEditingController(),
                hintText: 'Egypt',
              ),
              verticalSpace(4),
              TitleWithTextField(
                title: 'State or Province',
                controller: TextEditingController(),
                hintText: 'Cairo',
              ),
              verticalSpace(4),
              TitleWithTextField(
                title: 'City',
                controller: TextEditingController(),
                hintText: 'Cairo',
              ),
              verticalSpace(4),
              TitleWithTextField(
                title: 'Postal Code',
                controller: TextEditingController(),
                hintText: '12345',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
