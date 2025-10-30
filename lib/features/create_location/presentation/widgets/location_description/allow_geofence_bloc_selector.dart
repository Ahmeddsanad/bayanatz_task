import 'package:bayanatz_task/core/widgets/switch_with_title.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllowGeofenceSwitchBlocSelector extends StatelessWidget {
  const AllowGeofenceSwitchBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CreateLocationCubit>();
    return BlocSelector<CreateLocationCubit, CreateLocationState, bool>(
      selector: (state) => cubit.allowGeofence,
      builder: (context, isAllowGeofence) {
        return SwitchWithTitle(
          title: 'Allow Geofence',
          isEnabled: isAllowGeofence,
          onChanged: (value) {
            cubit.toggleAllowGeofence(value);
          },
        );
      },
    );
  }
}
