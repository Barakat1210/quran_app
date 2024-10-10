import 'package:eslam_quran/config/theme/my_theme.dart';
import 'package:eslam_quran/core/core/routes_manager.dart';
import 'package:eslam_quran/presentation/home/homescreen.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/hadith_details/hadithdetails.dart';
import 'package:eslam_quran/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:eslam_quran/presentation/splash/splash_screen.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.currentLan),
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute:(context) => Home_Screen(),
        RoutesManager.SplashRoute:(_)=>Splash_Screen(),
        RoutesManager.quranDetailsRoute:(_)=>QuranDetalsScreen(),
        RoutesManager.HadithDetailsRoute:(_)=>HadithDetails(),
      }
      ,initialRoute:RoutesManager.SplashRoute ,
      theme: MyTheme.lighttheme,
     darkTheme: MyTheme.darktheme,
      themeMode: ThemeMode.light,
    );
  }
}