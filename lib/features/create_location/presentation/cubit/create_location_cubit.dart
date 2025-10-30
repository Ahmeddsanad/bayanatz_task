import 'package:bayanatz_task/features/create_location/data/location_repository.dart';
import 'package:bayanatz_task/features/create_location/domain/location_model.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateLocationCubit extends Cubit<CreateLocationState> {
  CreateLocationCubit() : super(CreateLocationInitial());

  LocationRepository locationRepository = LocationRepository();

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

  Future<void> submitLocationForm() async {
    emit(CreateLocationLoadingState());

    try {
      final location = LocationModel(
        locationId: '', // will be auto-assigned in repository
        locationName: locationNameController.text.trim(),
        locationUrl:
            'https://maps.google.com/?q=${latitudeController.text.trim()},${longitudeController.text.trim()}',
        country: countryController.text.trim(),
        stateOrProvince: stateController.text.trim(),
        city: cityController.text.trim(),
        postalCode: postalCodeController.text.trim(),
        allowGeofence: allowGeofence,
        allowBreaks: allowBreaks,
        allowPause: allowPause,
      );

      await locationRepository.addLocation(location);

      emit(CreateLocationSuccessState());
      resetLocationDescriptionForm();
    } catch (e) {
      emit(CreateLocationErrorState(e.toString()));
    }
  }

  void resetLocationDescriptionForm() {
    locationNameController = TextEditingController();
    latitudeController = TextEditingController();
    longitudeController = TextEditingController();
    countryController = TextEditingController();
    stateController = TextEditingController();
    cityController = TextEditingController();
    postalCodeController = TextEditingController();
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
