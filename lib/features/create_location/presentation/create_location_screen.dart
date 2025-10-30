import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/create_new_location_buttons.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/location_description_content.dart';
import 'package:bayanatz_task/features/create_location/presentation/widgets/location_settings_content.dart';
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
        child: SingleChildScrollView(
          child: Column(
            spacing: 6.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationDescriptionContent(),
              LocationSettingsContent(),
              verticalSpace(20),
              CreateNewLocationButtons(onDiscard: () {}, onCreate: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
