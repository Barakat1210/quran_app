import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:eslam_quran/core/core/fonts_manager.dart';
import 'package:flutter/material.dart';

class MyTheme {
  //static bool isDarkEnabled = false;
  static final ThemeData lighttheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.goldColor,
    primary: ColorsManager.goldColor,
    secondary: Colors.white,),
    primaryColor: ColorsManager.goldColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        fontFamily: FontsManager.elMessiri,
        color: Colors.black,
        backgroundColor: Colors.transparent,
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
    ),
    iconTheme: IconThemeData(
      color: ColorsManager.goldColor,
      size: 30,
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
    bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 18,
        backgroundColor: Colors.white),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.black,
      ),
      titleMedium: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: ColorsManager.goldColor,
      ),
      bodyLarge: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
    ),
  );
  static final ThemeData darktheme = ThemeData(
    primaryColor: ColorsManager.darkblue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.darkblue,
      primary: ColorsManager.darkblue,
      secondary:Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        backgroundColor: Colors.transparent,
      ),
    ),
    cardTheme: CardTheme(
      color: ColorsManager.darkblue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
    ),
    dividerColor: ColorsManager.yellowColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: ColorsManager.yellowColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 20),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 18,
      backgroundColor: ColorsManager.darkblue,
    ),
    iconTheme: IconThemeData(
      color: ColorsManager.yellowColor,
      size: 30,
    ),
    textTheme: const TextTheme(
      titleSmall: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: Colors.white,
      ),
      titleMedium: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: ColorsManager.yellowColor,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: ColorsManager.yellowColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorsManager.yellowColor,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: ColorsManager.yellowColor,
      ),
      displayMedium: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
