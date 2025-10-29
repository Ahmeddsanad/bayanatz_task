// ignore_for_file: unused_local_variable

import 'package:bayanatz_task/core/routing/router.dart';
import 'package:bayanatz_task/features/create_location/presentation/create_location_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like login screen, onboarding screen
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.createLocation:
        return MaterialPageRoute(builder: (_) => const CreateLocationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No route found'))),
        );
    }
  }
}
