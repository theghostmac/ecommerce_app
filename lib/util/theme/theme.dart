import 'package:ecommerce_app/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/text_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_app/util/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class EcommerceAppTheme {
  EcommerceAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: EcommerceTextTheme.lightTextTheme,
    elevatedButtonTheme: EcommerceElevatedButtonTheme.lightElevatedButton,
    appBarTheme: EcommerceAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EcommerceBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: EcommerceTextFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: EcommerceOutlinedButtomTheme.lightOutlinedButtonTheme,
    checkboxTheme: EcommerceCheckBoxTheme.lightCheckBoxTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: EcommerceTextTheme.darkTextTheme,
    elevatedButtonTheme: EcommerceElevatedButtonTheme.darkElevatedButton,
    appBarTheme: EcommerceAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EcommerceBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: EcommerceTextFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: EcommerceOutlinedButtomTheme.darkOutlinedButtonTheme,
    checkboxTheme: EcommerceCheckBoxTheme.darkCheckBoxTheme,
  );
}
