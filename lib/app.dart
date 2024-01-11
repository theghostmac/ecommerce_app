import 'package:ecommerce_app/features/authentication/screens/onboarding.dart';
import 'package:ecommerce_app/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EcommerceAppTheme.lightTheme,
      darkTheme: EcommerceAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
