import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_page/themes/material_color.dart';

ThemeData darkTheme() {
  Color orangeSpark = const Color(0xFFF8670E);
  return ThemeData(
    dividerTheme: const DividerThemeData(
      indent: 20,
      endIndent: 20,
      space: 0.5,
      color: Colors.black54,
    ),
    dividerColor: Colors.transparent,
    dialogTheme: DialogTheme(
      backgroundColor: const Color(0xFF202020),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    ),
    primaryColor: orangeSpark,
    backgroundColor: Colors.red,
    disabledColor: Colors.grey,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: Colors.black,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      primary: orangeSpark,
      secondary: Colors.grey,
      error: Colors.red,
      onError: Colors.redAccent,
      onBackground: Colors.grey[200]!,
      //Cores não usadas ==============
      onSurface: Colors.white,
      surface: Colors.white,
    ),
    primarySwatch: buildMaterialColor(orangeSpark),
    scaffoldBackgroundColor: const Color(0xFF202020),
    textTheme: const TextTheme(
      subtitle1: TextStyle(color: Colors.white),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: orangeSpark),
      color: Colors.transparent,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: orangeSpark,
        fontWeight: FontWeight.w900,
        fontSize: 22,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: orangeSpark,
        onPrimary: orangeSpark,
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
      backgroundColor: Color(0xFF202020),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentTextStyle: const TextStyle(color: Colors.black),
    ),
    cardColor: const Color(0xFF202020),
  );
}
