import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateLocationCubit extends Cubit<CreateLocationState> {
  CreateLocationCubit() : super(CreateLocationInitial());

  // ----------------------------- create location form ------------------------------

  GlobalKey<FormState> locDescKey = GlobalKey<FormState>();
  bool allowGeofence = false;
  bool allowBreaks = false;
  bool allowPause = false;

  TextEditingController locationNameController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();

  void toggleAllowGeofence(bool value) {
    allowGeofence = value;
    emit(ToggleAllowGeofenceState());
  }

  void toggleAllowBreaks(bool value) {
    allowBreaks = value;
    emit(ToggleAllowBreaksState());
  }

  void toggleAllowPause(bool value) {
    allowPause = value;
    emit(ToggleAllowPauseState());
  }

  void resetLocationDescriptionForm() {
    locationNameController.clear();
    latitudeController.clear();
    longitudeController.clear();
    countryController.clear();
    stateController.clear();
    cityController.clear();
    postalCodeController.clear();
    locDescKey.currentState?.reset();
    allowGeofence = false;
    allowBreaks = false;
    allowPause = false;
    emit(ResetLocationDescriptionFormState());
  }

  @override
  Future<void> close() {
    locationNameController.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
    countryController.dispose();
    stateController.dispose();
    cityController.dispose();
    postalCodeController.dispose();
    return super.close();
  }
}
