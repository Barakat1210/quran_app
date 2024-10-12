import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:eslam_quran/core/core/strings_manager.dart';
import 'package:eslam_quran/provider/sebha_provider.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
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
  late AnimationController controller;

  @override
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var sebhaProvider = Provider.of<SebhaProvider>(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedRotation(
                turns: sebhaProvider.turns,
                duration: Duration(seconds: 1),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.4,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.4,
                  child: Image.asset(provider.changeSebhaTheme()),
                ),
              ),
              Positioned(
                bottom: MediaQuery
                    .of(context)
                    .size
                    .height * 0.13,
                left: 23,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.4,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.4,
                  child: Image.asset(provider.changeSebhaheaderTheme()),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                Strings_Manager.numberTasbha,
                style: Theme
                    .of(context)
                    .textTheme
                    .titleMedium,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme
                          .of(context)
                          .primaryColor,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      sebhaProvider.count2.toString(),
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleSmall,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme
                          .of(context)
                          .dividerColor,
                    ),
                    onPressed: () {
                      sebhaProvider.turns;
                      sebhaProvider.incrementCounter();
                    },
                    child: Text(
                      sebhaProvider.butText,
                      style: Theme
                          .of(context)
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
