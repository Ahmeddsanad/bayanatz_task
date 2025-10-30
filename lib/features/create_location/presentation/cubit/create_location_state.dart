abstract class CreateLocationState {}

final class CreateLocationInitial extends CreateLocationState {}

final class CreateLocationLoadingState extends CreateLocationState {}

final class CreateLocationSuccessState extends CreateLocationState {}

final class CreateLocationErrorState extends CreateLocationState {
  final String errorMessage;

  CreateLocationErrorState(this.errorMessage);
}

final class ToggleAllowGeofenceState extends CreateLocationState {}

final class ToggleAllowBreaksState extends CreateLocationState {}

final class ToggleAllowPauseState extends CreateLocationState {}

final class ResetLocationDescriptionFormState extends CreateLocationState {}
