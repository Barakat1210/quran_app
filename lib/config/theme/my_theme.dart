import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lighttheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        backgroundColor: Colors.transparent,
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),margin: EdgeInsets.all(8),
    ),
    dividerColor: ColorsManager.goldColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0),
    textTheme: const TextTheme(
      titleSmall: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
      titleMedium: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
  );
}
