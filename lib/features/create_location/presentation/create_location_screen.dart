import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/title_with_text_field.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/new_location_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateLocationScreen extends StatelessWidget {
  const CreateLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox.shrink(),
        title: NewLocationAppBar(),
        backgroundColor: AppColors.lightModeBGColor,
      ),
      backgroundColor: AppColors.lightModeBGColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location Description',
              style: AppTextStyle.semiBold16spGrayed(context),
            ),
            IntrinsicHeight(
              child: Container(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
