import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/app/app_pages.dart';
import 'package:movie_db_app_getx/core/app/app_routes.dart';
import 'package:movie_db_app_getx/core/app/app_binding.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MovieDB App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
      initialBinding: AppBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ThemeColors.primary,
          primary: ThemeColors.primary,
          secondary: ThemeColors.secondary,
        ),
        scaffoldBackgroundColor: ThemeColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColors.primary,
          foregroundColor: ThemeColors.white,
        ),
        useMaterial3: true,
      ),
    );
  }
}