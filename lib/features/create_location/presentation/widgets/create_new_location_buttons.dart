import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreateNewLocationButtons extends StatelessWidget {
  const CreateNewLocationButtons({
    super.key,
    required this.onDiscard,
    required this.onCreate,
  });

  final void Function() onDiscard;
  final void Function() onCreate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButton(
          onPressed: onDiscard,
          backgroundColor: AppColors.discardOrNoColorButton,
          title: 'Discard',
        ),
        Spacer(),
        CustomElevatedButton(
          onPressed: onCreate,
          backgroundColor: AppColors.createOrYesColorButton,
          title: 'Create',
        ),
      ],
    );
  }
}
