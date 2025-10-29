import 'package:bayanatz_task/core/helpers/custom_bloc_observer.dart';
import 'package:bayanatz_task/core/helpers/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialBeforeBuildApp {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupServiceLocator();
    Bloc.observer = CustomBlocObserver();
  }
}
