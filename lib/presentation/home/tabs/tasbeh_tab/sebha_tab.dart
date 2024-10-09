import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
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
  String butText='click her';
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
  void _incrementCounter() {
    setState(() {
      counter++;
      controller.forward(from: 0); // إعادة تشغيل الحركة عند الضغط على الزر
    if(counter<33){
      butText='سبحان الله';
    }else if(counter>=33&&counter<66){
        butText='الحمد لله';
      }else if(counter>=66&&counter<99){
      butText='لا اله الا الله ';
    }else if(counter>=99&&counter<133){
      butText='الله اكير';
    }else{
    counter=0;
    butText='بدء التسبيح';}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [Container(
                child: Image.asset(AssetsManager.tasbha_log)),
              RotationTransition(
                turns: controller.drive(
                  Tween(begin: 0.0, end: 1.0),
                ),
                child: Container(
                    child: Image.asset(AssetsManager.tasbha)),
              ),],
          ),
          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFB7935F),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  '$counter',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
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
    );
  }
}
