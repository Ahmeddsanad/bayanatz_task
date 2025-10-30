import 'package:bayanatz_task/core/helpers/custom_bloc_observer.dart';
import 'package:bayanatz_task/core/helpers/setup_service_locator.dart';
import 'package:bayanatz_task/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialBeforeBuildApp {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setupServiceLocator();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Bloc.observer = CustomBlocObserver();
  }
}
