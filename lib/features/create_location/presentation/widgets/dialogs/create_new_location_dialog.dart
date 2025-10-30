// ignore_for_file: use_build_context_synchronously

import 'package:bayanatz_task/core/constants/app_assets.dart';
import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/custom_elevated_button.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/dialogs/success_location_added_dialog.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    Navigator.pop(context);
                  },
                  backgroundColor: AppColors.discardOrNoColorButton,
                  title: 'No',
                ),
                horizontalSpace(20),
                CustomElevatedButton(
                  onPressed: () {
                    context.read<CreateLocationCubit>().submitLocationForm();
                    // close the previous dialog
                    Navigator.pop(context);
                    // show success dialog
                    showDialog(
                      context: context,
                      builder: (context) => SuccessLocationAddedDialog(),
                    );
                    // reset the form
                    context
                        .read<CreateLocationCubit>()
                        .resetLocationDescriptionForm();
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
