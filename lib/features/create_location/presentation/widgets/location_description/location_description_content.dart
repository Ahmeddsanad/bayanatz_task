import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/constants/app_validation.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/title_with_text_field.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/location_description/allow_geofence_bloc_selector.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/location_description/google_map_title_and_field.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/location_description/lat_lng_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationDescriptionContent extends StatelessWidget {
  const LocationDescriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CreateLocationCubit>();
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
          child: Form(
            key: cubit.locDescKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWithTextField(
                  title: 'Location Name',
                  controller: cubit.locationNameController,
                  hintText: 'Branch 1',
                  validator: AppValidators.displayNamevalidator,
                ),
                verticalSpace(6),
                GoogleMapTitleAndField(),
                verticalSpace(4),
                LatLngData(),
                verticalSpace(6),
                AllowGeofenceSwitchBlocSelector(),
                TitleWithTextField(
                  title: 'Country',
                  controller: cubit.countryController,
                  hintText: 'Egypt',
                  validator: AppValidators.displayNamevalidator,
                ),
                verticalSpace(4),
                TitleWithTextField(
                  title: 'State or Province',
                  controller: cubit.stateController,
                  hintText: 'Cairo',
                  validator: AppValidators.displayNamevalidator,
                ),
                verticalSpace(4),
                TitleWithTextField(
                  title: 'City',
                  controller: cubit.cityController,
                  hintText: 'Cairo',
                  validator: AppValidators.displayNamevalidator,
                ),
                verticalSpace(4),
                TitleWithTextField(
                  title: 'Postal Code',
                  controller: cubit.postalCodeController,
                  hintText: '12345',
                  validator: AppValidators.validatePostalCode,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
