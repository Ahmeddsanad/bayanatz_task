import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/switch_with_title.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        BlocBuilder<CreateLocationCubit, CreateLocationState>(
          builder: (context, state) {
            var cubit = context.read<CreateLocationCubit>();
            return Container(
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
                        Expanded(child: _allowBreaksSwitch(cubit)),
                        horizontalSpace(20),
                        Expanded(child: _allowPauseSwitch(cubit)),
                      ],
                    )
                  : Column(
                      children: [
                        _allowBreaksSwitch(cubit),
                        verticalSpace(10),
                        _allowPauseSwitch(cubit),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }

  SwitchWithTitle _allowPauseSwitch(CreateLocationCubit cubit) {
    return SwitchWithTitle(
      title: 'Allow Pause',
      isEnabled: cubit.allowPause,
      onChanged: cubit.toggleAllowPause,
    );
  }

  SwitchWithTitle _allowBreaksSwitch(CreateLocationCubit cubit) {
    return SwitchWithTitle(
      title: 'Allow Breaks in Attendance',
      isEnabled: cubit.allowBreaks,
      onChanged: cubit.toggleAllowBreaks,
    );
  }
}
