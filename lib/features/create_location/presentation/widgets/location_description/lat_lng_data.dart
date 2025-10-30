import 'package:bayanatz_task/core/constants/app_validation.dart';
import 'package:bayanatz_task/core/functions/spacing.dart';
import 'package:bayanatz_task/core/widgets/title_with_text_field.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatLngData extends StatelessWidget {
  const LatLngData({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CreateLocationCubit>();
    return Row(
      children: [
        Expanded(
          child: TitleWithTextField(
            title: 'Latitude',
            controller: cubit.latitudeController,
            hintText: '30.0444',
            validator: AppValidators.validateLatitude,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        horizontalSpace(15),
        Expanded(
          child: TitleWithTextField(
            title: 'Longitude',
            controller: cubit.longitudeController,
            hintText: '31.2357',
            validator: AppValidators.validateLongitude,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*\.?[0-9]*$')),
            ],
          ),
        ),
      ],
    );
  }
}
