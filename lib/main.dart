import 'package:ecommerce_app/util/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: EcommerceAppTheme.lightTheme,
      darkTheme: EcommerceAppTheme.darkTheme,
    );
  }
}
