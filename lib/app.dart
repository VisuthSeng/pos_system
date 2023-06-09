import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_system/presentation/screen/home_screen.dart';
import 'package:pos_system/welcome_screen.dart';

import 'core/constant/app_route.dart';
import 'di/main_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      // theme: AppTheme.red(),
      // locale: AppLocalization.locale,
      // fallbackLocale: AppLocalization.fallbackLocale,
      // translations: AppLocalization(),
      initialBinding: MainBinding(),
      initialRoute: AppRoute.addcategory,
      getPages: [
        GetPage(
          name: AppRoute.home,
          page: () => const WelcomeScreen(),
        ),
        GetPage(
          name: AppRoute.addcategory,
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
