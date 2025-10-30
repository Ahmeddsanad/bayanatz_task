import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/functions/check_mobile_or_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    this.validator,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.hintText,
    this.keyboardType,
    super.key,
  });

  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      style: TextStyle(fontSize: isTablet(context) ? 18.sp : 14.sp),
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: AppColors.lightModeBGColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.lightModeBGColor),
        ),
        hintText: hintText ?? 'hint text',
        hintStyle: TextStyle(fontSize: isTablet(context) ? 18.sp : 14.sp),
      ),
    );
  }
}
