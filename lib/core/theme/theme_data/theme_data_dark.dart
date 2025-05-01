import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_colors/app_dark_colors.dart';

ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppDarkColors.kPrimaryColor,
  scaffoldBackgroundColor: AppDarkColors.kBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppDarkColors.kBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: AppDarkColors.kTextColor),
    titleTextStyle: TextStyle(
      color: AppDarkColors.kTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(
      color: AppDarkColors.kTextColor,
      fontSize: 16,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppDarkColors.kTextColor,
      fontSize: 14,
    ),
    labelLarge: GoogleFonts.poppins(
      color: AppDarkColors.kLinkColor,
      fontSize: 14,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppDarkColors.kButtonColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: AppDarkColors.kPrimaryColor,
    error: AppDarkColors.kErrorColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.only(left: 0),
      foregroundColor: const Color(0XFFF8C89A),
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(color: Colors.grey),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppDarkColors.kPrimaryColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppDarkColors.kErrorColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppDarkColors.kErrorColor, width: 0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(color: AppDarkColors.kPrimaryColor, width: 2),
  ),
);
