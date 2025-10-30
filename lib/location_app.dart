import 'package:bayanatz_task/core/constants/app_fonts.dart';
import 'package:bayanatz_task/core/routing/app_router.dart';
import 'package:bayanatz_task/core/routing/router.dart';
import 'package:bayanatz_task/features/create_location/presentation/cubit/create_location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationApp extends StatelessWidget {
  const LocationApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) {
        return BlocProvider<CreateLocationCubit>(
          create: (context) => CreateLocationCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Location App',
            onGenerateRoute: appRouter.generateRoute,
            theme: ThemeData.light().copyWith(
              textTheme: ThemeData.light().textTheme.apply(
                fontFamily: AppFontFamily.cairoFontFamily,
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: AppFontFamily.cairoFontFamily,
              ),
            ),
            themeMode: ThemeMode.system,
            initialRoute: Routes.createLocation,
          ),
        );
      },
    );
  }
}
