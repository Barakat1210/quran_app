import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:eslam_quran/core/core/strings_manager.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({
    super.key,
  });
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  int count2 = 0;
  String butText = 'بدء التسبيح';
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void incrementCounter() {
    setState(() {
      counter++;
      controller.forward(from: 0);
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
    });
  }

  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedRotation(
                turns: turns,
                duration: Duration(seconds: 1),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(provider.changeSebhaTheme()),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.13,
                left: 23,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(provider.changeSebhaheaderTheme()),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                Strings_Manager.numberTasbha,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).primaryColor,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      '$count2',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).dividerColor,
                    ),
                    onPressed: () {
                      incrementCounter();
                      setState(() => turns += 1 / 33);
                    },
                    child: Text(
                      butText,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
