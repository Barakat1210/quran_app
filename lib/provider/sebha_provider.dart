import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:flutter/material.dart';
class SebhaProvider extends ChangeNotifier {
  int counter = 0;
  int count2 = 0;
  String butText = 'بدء التسبيح';
  late AnimationController controller;
  double turns = 0.0;
  void incrementCounter() {
    turns += (1 / 33);
    counter++;
    //controller.forward(from: 0);
    if (counter <= 34) {
      if (counter <= 33) {
        count2++;
        butText = 'سبحان الله';
      } else {
        count2++;
        butText = 'الحمد لله';
        count2 = 0;
      }
    } else if (counter >= 34 && counter < 68) {
      if (counter < 67) {
        count2++;
        butText = 'الحمد لله ';
      } else {
        count2++;
        butText = 'لا اله الا الله ';
        count2 = 0;
      }
    } else if (counter >= 68 && counter < 101) {
      if (counter < 100) {
        count2++;
        butText = 'لا اله الا الله ';
      } else {
        count2++;
        butText = 'الله اكير';
        count2 = 0;
      }
    } else if (counter >= 101 && counter < 135) {
      if (counter < 134) {
        count2++;
        butText = 'الله اكير';
      } else {
        count2++;
        butText = 'بدء التسبيح';
        count2 = 0;
      }
    } else {
      counter = 0;
      butText = 'بدء التسبيح';
    }
    if (counter < 33) {
      if (counter < 33) {
        butText = 'سبحان الله';
      }
    }
    notifyListeners();
  }
}