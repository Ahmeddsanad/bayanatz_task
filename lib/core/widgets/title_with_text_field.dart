
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TitleWithTextField extends StatelessWidget {
  const TitleWithTextField({
    required this.title,
    required this.controller,
    this.hintText,
    this.onFieldSubmitted,
    this.validator,
    super.key,
  });

  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final String? hintText;
  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.semiBold16spGrayed(context)),
        verticalSpace(4),
        CustomTextFormField(
          hintText: hintText,
          controller: controller,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
        ),
      ],
    );
  }
}

