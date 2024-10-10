import 'package:eslam_quran/my_app/my_app.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>SettingsProvider(),
      child: MyApp()));
}

