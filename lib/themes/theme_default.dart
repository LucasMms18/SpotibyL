import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_page/themes/material_color.dart';

ThemeData defaultThemeData() {
  Color orangeSpark = const Color(0xFFF8670E);
  return ThemeData(
    dividerTheme: DividerThemeData(
      indent: 20,
      endIndent: 20,
      space: 0.5,
      color: Colors.grey[300],
    ),
    dividerColor: Colors.transparent,
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    ),
    primaryColor: orangeSpark,
    backgroundColor: Colors.red,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      background: const Color(0xFF656565),
      onPrimary: Colors.black,
      onSecondary: Colors.grey[100]!,
      primary: orangeSpark,
      secondary: Colors.grey[300]!,
      error: Colors.red,
      onError: Colors.redAccent,
      onBackground: Colors.grey[200]!,
      //Cores não usadas ==============
      onSurface: Colors.black,
      surface: Colors.grey[300]!,
    ),
    primarySwatch: buildMaterialColor(orangeSpark),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      subtitle1: TextStyle(color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: Color(0xFFF8670E),
          letterSpacing: 1.7,
          fontWeight: FontWeight.w700,
          fontSize: 25),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: orangeSpark,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: orangeSpark,
        side: BorderSide(color: orangeSpark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    cardColor: Colors.white,
  );
}
