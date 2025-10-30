import 'package:bayanatz_task/core/routing/app_router.dart';
import 'package:bayanatz_task/initial_before_build_app.dart';
import 'package:bayanatz_task/location_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialBeforeBuildApp.init();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => LocationApp(appRouter: AppRouter()),
    ),
  );
}
