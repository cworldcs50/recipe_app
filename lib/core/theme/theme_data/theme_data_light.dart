import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_colors/app_light_colors.dart';

ThemeData lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppLightColors.kPrimaryColor,
  scaffoldBackgroundColor: AppLightColors.kBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppLightColors.kBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: AppLightColors.kTextColor),
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(
      color: AppLightColors.kTextColor,
      fontSize: 16,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppLightColors.kTextColor,
      fontSize: 14,
    ),
    labelLarge: GoogleFonts.poppins(
      color: AppLightColors.kLinkColor,
      fontSize: 14,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(color: AppLightColors.kHintColor),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppLightColors.kPrimaryColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppLightColors.kErrorColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppLightColors.kErrorColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppLightColors.kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppLightColors.kSloganColor,
      ),
    ),
  ),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(color: AppLightColors.kPrimaryColor, width: 2),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.only(left: 0),
      foregroundColor: AppLightColors.kSloganColor,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
);
