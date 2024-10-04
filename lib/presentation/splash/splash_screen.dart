import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/core/core/routes_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);

    });
    return Scaffold(
      body: Image.asset(
        AssetsManager.lightSplashScreen,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
