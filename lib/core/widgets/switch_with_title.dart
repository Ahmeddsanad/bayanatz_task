import 'package:bayanatz_task/core/constants/app_colors.dart';
import 'package:bayanatz_task/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:riff_switch/riff_switch.dart';

class SwitchWithTitle extends StatelessWidget {
  const SwitchWithTitle({
    super.key,
    this.title = 'Allow Pause',
    this.onChanged,
    this.isEnabled = false,
  });

  final String title;
  final void Function(bool)? onChanged;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.semiBold16spGrayed(context),
        ),
        Spacer(),
        RiffSwitch(
          value: isEnabled,
          type: RiffSwitchType.cupertino,
          onChanged: onChanged,
          activeColor: AppColors.blueMapFieldColor,
        ),
      ],
    );
  }
}
